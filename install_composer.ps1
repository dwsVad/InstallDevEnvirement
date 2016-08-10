#Set Paths
$SourceComposerHttp = "https://getcomposer.org/Composer-Setup.exe"

#SetNameInstaller
$composerInstallerPath = "C:\Users\Vad\PhpstormProjects\TimFamily\Composer-Setup.exe"

(New-Object Net.WebClient).DownloadFile($SourceComposerHttp, $composerInstallerPath)
