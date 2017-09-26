$path = $args[0]
$tmpContent = ""
for ($i=1; $i -lt $args.Length; $i++) { $tmpContent += $args[$i] + " " }
$content = $tmpContent.TrimEnd()
Clear-Content -path $path
Add-Content -path $path $content
