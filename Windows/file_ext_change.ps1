<#
.SYNOPSIS
    This script lets you take files and change file extensions all at once

.SYNTAX
    .\file_ext_change.ps1 <File(s)> <newExtension>

.EXAMPLE
    .\file_ext_change.ps1 .\myTxtFiles\*.md ".txt"

.NOTES
    you can pass extension as ".txt" or "txt"
#>

if ($args[1] -eq $null) {
    Write-Output "Need two arguments"
    Exit
}

$currentPath = (Get-Item -Path ".\" -Verbose).FullName
$filePath = Get-Item $args[0]
$newExt = $args[1]

if ($newExt -isnot [string]) {
    $newExt = $newExt.ToString()
}

#gets rid of period if they passed ".txt" instead of "txt"
if ($newExt.IndexOf(".") -eq 0) {
    $newExt = $newExt.Substring(1)
}

#see if directory passed or files
if ($filePath.GetType().Name -match "DirectoryInfo") {
    $filePath = ($filePath | Get-ChildItem)
} 

if (Test-Path $filePath[0].Directory) {    
    
    $filePath | Rename-Item -NewName {$_.BaseName+"."+$newExt}

    Write-Output("")
    Write-Output("Renamed the following files:")
    Write-Output("----------------------------")

    ForEach ($file in $filePath) {
        Write-Output($file.Name)
    }
} else {
    Write-Output("")
    Write-Output("!--No Files exist at path--!")
    Write-Output("")
}

cd $currentPath