$Gateway = "192.168.1.1"
$File = ".\alamat.txt"

$IPs = Get-Content $File |
    ForEach-Object {
        if ($_ -match '\|\s*(\d{1,3}(?:\.\d{1,3}){3}):\d+') {
            $Matches[1]
        }
    } |
    Sort-Object -Unique

foreach ($IP in $IPs) {
    Write-Host "Menambahkan route: $IP -> $Gateway"

    route add $IP mask 255.255.255.255 $Gateway
}
