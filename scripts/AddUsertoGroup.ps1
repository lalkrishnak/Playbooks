 $ComputerName = $env:COMPUTERNAME
 $CompObject = [ADSI]"WinNT://$ComputerName"
 $GroupName = $args[0]
 $UserName = $args[1]
 $Group = $CompObject.Children.Find($GroupName, 'group')
 $Group.Add(("WinNT://$ComputerName/$UserName"))
