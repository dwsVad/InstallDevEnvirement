#SetNameArchive

$settingsJarPath = "C:\Users\Vad\PhpstormProjects\TimFamily\settings.jar"
$settingsZipPath = "C:\Users\Vad\PhpstormProjects\TimFamily\settings.zip"

$DestinationSettingsFolder = "C:\Users\Vad\PhpstormProjects\TimFamily\stormSettings"  # this folder MUST exist

rename-item -path $settingsJarPath -newname $settingsZipPath

$helper = New-Object -ComObject Shell.Application
$files = $helper.NameSpace($settingsZipPath).Items()
$helper.NameSpace($DestinationSettingsFolder).CopyHere($files)