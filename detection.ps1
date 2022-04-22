try
{  

$7ZipInstalled = Test-Path 'C:\Program Files\7-Zip\7-zip.chm'

if ($7ZipInstalled -eq 'True') {
    Write-Host "7-Zip Help file present."
    exit 1
    }
    else {
        #No remediation required    
        Write-Host "7-Zip Help file NOT present."
        exit 0
    }  
}
catch {
    $errMsg = $_.Exception.Message
    Write-Error $errMsg
    exit 1
}