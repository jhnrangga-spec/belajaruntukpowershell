$Gateway = "192.168.1.1"

Get-Content ".\alamat.txt" | ForEach-Object {
    $IP = $_.Trim()

    if ($IP -match '^\d{1,3}(\.\d{1,3}){3}$') {
        route add $IP mask 255.255.255.255 $Gateway
    }
}
