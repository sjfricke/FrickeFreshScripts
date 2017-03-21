# FrickeFreshScripts

Ever needed to do something quick in Windows or Linux and debating if you should do it by hand or make a script. Well now the script is made so you can't make the wrong choice again.

These are not 100% robust scripts but all will show you options with `--help`

## Windows Scripts

* `file_ext_change.ps1`
	* Will take a set of files and change the file extensions
	* Use: `.\file_ext_change.ps1 < filePath\with\*.wildcard > < .newExtension >`
	* Example: `.\file_ext_change.ps1 .\images\*.png .jpg`

## Linux Scripts

* `file_ext_change.sh`
	* Will take a set of files and change the file extensions	
	* Use: `./file_ext_change.sh < filePath/with/*.wildcard > < .newExtension >`
	* Example: `./file_ext_change.sh ./images/*.png .jpg`
