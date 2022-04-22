$FileLocation = "C:\Program Files\7-Zip\7-zip.chm"
$FileName = "7-zip.chm"

if (Test-Path $FileLocation ) {
  Remove-Item $FileLocation 
  write-host "$FileName has been deleted"
}

else {
  Write-host "$FileName doesn't exist"
}