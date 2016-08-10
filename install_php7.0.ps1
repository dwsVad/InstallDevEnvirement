#Set-ExecutionPolicy RemoteSigned -- это разрешает выполнять скрипты. Нужно выполнить отдельно в консоли повершела

#Set Paths
$SourcePHPHttp = "http://windows.php.net/downloads/releases/php-7.0.9-Win32-VC14-x64.zip"

#SetNameArchive
$phpZipPath = "C:\Users\Vad\PhpstormProjects\TimFamily\php7.0.9.zip"

$DestinationPhpFolder = "C:\Users\Vad\PhpstormProjects\TimFamily\php7.0.9"  # this folder MUST exist


#Download php 
(New-Object Net.WebClient).DownloadFile($SourcePHPHttp, $phpZipPath)
$helper = New-Object -ComObject Shell.Application
$files = $helper.NameSpace($phpZipPath).Items()
$helper.NameSpace($DestinationPhpFolder).CopyHere($files)