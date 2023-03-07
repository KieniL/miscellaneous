$targetFolder = "./Ordner"
$extensionToBeUsed = "jpg"

$files = $(Get-ChildItem -Path $targetFolder -Recurse -File)

foreach ($file in $files) {

    $directoryName = $(Split-Path (Split-Path $file.FullName -Parent) -Leaf)
    $directoryName

    $oldFile = $file.FullName


    Rename-Item -Path $file.FullName -NewName "$directoryName.$extensionToBeUsed"

}