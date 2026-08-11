# index.html 다시 만들기 (hanja-data.js + index-template.html → index.html)
$d = $PSScriptRoot
$data = [System.IO.File]::ReadAllText("$d\hanja-data.js", [System.Text.Encoding]::UTF8)
$tpl  = [System.IO.File]::ReadAllText("$d\index-template.html", [System.Text.Encoding]::UTF8)
$out  = $tpl.Replace("/*__HANJA_DATA__*/", $data)
[System.IO.File]::WriteAllText("$d\index.html", $out, (New-Object System.Text.UTF8Encoding($false)))
Write-Output "index.html 다시 만들었습니다."