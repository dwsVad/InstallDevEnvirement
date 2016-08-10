#powershell -noexit "& ""C:\Users\Vad\PhpstormProjects\TimFamily\install_phpStorm.ps1""" Command for run script
#Set-ExecutionPolicy RemoteSigned -- это разрешает выполнять скрипты. Нужно выполнить отдельно в консоли повершела


$tmpDir = "C:\Users\Vad\PhpstormProjects\TimFamily"
$devProgramsDir = "C:\Users\Vad\PhpstormProjects\TimFamily"

function installPHP {

    #Set Paths
    $SourcePHPHttp = "http://windows.php.net/downloads/releases/php-7.0.9-Win32-VC14-x64.zip"
    #SetNameArchive
    $phpZipPath = "$tmpDir\php7.0.9.zip"
    $DestinationPhpFolder = "$devProgramsDir\php7.0.9"  # this folder MUST exist

    if(test-path "$DestinationPhpFolder\php.exe")
    {
         "Application already installed"
        return
    }
    if(!(test-path "$DestinationPhpFolder"))
     {
        #Create Program folder
        mkdir $DestinationPhpFolder
    }
    if(!(test-path "$DestinationPhpFolder"))
    {
        "Can`t create dir $DestinationPhpFolder"
        return
    }
    #Download php
    (New-Object Net.WebClient).DownloadFile($SourcePHPHttp, $phpZipPath)
    $helper = New-Object -ComObject Shell.Application
    $files = $helper.NameSpace($phpZipPath).Items()
    $helper.NameSpace($DestinationPhpFolder).CopyHere($files)

    'Application successful installed'

    return

}
installPHP