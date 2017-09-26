 $GroupName = $args[0]
 $members = net localgroup $GroupName | 
 where {$_ -AND $_ -notmatch "command completed successfully"} | 
 select -skip 4
New-Object PSObject -Property @{
 Members=$members
 }
