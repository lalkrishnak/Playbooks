$adsi = [ADSI]"WinNT://$env:COMPUTERNAME"
$user = $args[0]
$adsi.Children | where {$_.SchemaClassName -eq 'user'} | Foreach-Object {
    $groups = $_.Groups() | Foreach-Object {$_.GetType().InvokeMember("Name", 'GetProperty', $null, $_, $null)}
    $_ | Select-Object @{n='UserName';e={$_.Name}},@{n='Groups';e={$groups -join ';'}}
} | where {$_.UserName -eq $user} | Select Groups | Format-List
