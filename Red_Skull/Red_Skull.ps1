#banner
function Logo {
    Write-Host "
                                  
          .                                                      .
          .n                   .                 .                  n.
    .   .dP                  dP                   9b                 9b.    .
   4    qXb         .       dX                     Xb       .        dXp     t
  dX.    9Xb      .dXb    __                         __    dXb.     dXP     .Xb
  9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP
   9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP
    `9XXXXXXXXXXXXXXXXXXXXX'~   ~`OOO8b   d8OOO'~   ~`XXXXXXXXXXXXXXXXXXXXXP'
      `9XXXXXXXXXXXP' `9XX'   DIE    `98v8P'  HUMAN   `XXP' `9XXXXXXXXXXXP'
          ~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~
                          )b.  .dbo.dP' v'`9b.odb.  .dX( " -ForegroundColor Red
    Write-Host "                          )b.  .dbo.dP' v'`9b.odb.  .dX(                               
                        ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.
                       dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb
                      dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb
                      9XXb'   `XXXXXb.dX|Xb.dXXXXX'   `dXXP
                       `'      9XXXXXX(   )XXXXXXP      `'
                                XXXX X.`v'.X XXXX
                                XP^X'`b   d'`X^XX
                                X. 9  `   '  P )X
                                `b  `       '  d'
                            `                  '" -ForegroundColor Blue
    Write-Host "
  *                                                                                                           *
    *-------------------------------------------------------------------------------------------------------*
    |                                                                                                       |
    |" -ForegroundColor Yellow -NoNewline; Write-Host " Programe Name :-" -ForegroundColor Green -NoNewline; Write-Host "  RED_SKULL               " -ForegroundColor Cyan -NoNewline; Write-Host "                                                            |
    |                                                                                                       |
    |" -ForegroundColor Yellow -NoNewline; Write-Host " Author        :-" -ForegroundColor Green -NoNewline; Write-Host "  H.H.A.Ravindu.Priyankara  " -ForegroundColor Cyan -NoNewline; Write-Host "                                                          |
    |                                                                                                       |
    |" -ForegroundColor Yellow -NoNewline; Write-Host " Github        :-" -ForegroundColor Green -NoNewline; Write-Host "  https://github.com/Ravindu-Priyankara " -ForegroundColor Cyan -NoNewline; Write-Host "                                              |
    |                                                                                                       |
    |" -ForegroundColor Yellow -NoNewline; Write-Host " Youtube       :-"-ForegroundColor Green -NoNewline; Write-Host "  https://www.youtube.com/channel/UCKD2j5Mbr15RKaXBSIXwvMQ " -ForegroundColor Cyan -NoNewline; Write-Host "                           |
    |                                                                                                       |
    |" -ForegroundColor Yellow -NoNewline; Write-Host " Linkedin      :-"-ForegroundColor Green -NoNewline; Write-Host "  https://www.linkedin.com/in/ravindu-priyankara-b77753209/ " -ForegroundColor Cyan -NoNewline; Write-Host "                          |
    *-------------------------------------------------------------------------------------------------------*"-ForegroundColor Yellow -NoNewline;
    ./banner.vbs
}


#animation
function Animation ($inpt) {
    $cursrtp = [Console]::CursorTop 

    try {
        [Console]::CursorVisible = $false

        $counter = 0 
        $animations = '|', '/', '-', '\'
        $setinpts = Start-Job -ScriptBlock $inpt 

        while ($setinpts.JobStateInfo.State -eq "running") {
            $animation = $animations[$counter % $animations.Length]
            
            Write-Host "$animation" -NoNewline
            [Console]::SetCursorPosition(0, $cursrtp)

            $counter += 1
            Start-Sleep -Milliseconds 125
        }
    }
    finally {
        [Console]::SetCursorPosition(0, $cursrtp)
        [Console]::CursorVisible = $true
    }
}

#help msg
function help {
    ./help.vbs
}
#call banner
Animation { Start-Sleep 3 }
Write-Output ""
Logo

#system info
$who = whoami
$hstnm = hostname
$u = $env:UserName
$dom = (Get-WmiObject -Class Win32_ComputerSystem).Domain
Write-Output ""
Animation { Start-Sleep 1 }
Write-Output ""
Write-Host "[+]." -ForegroundColor Magenta -NoNewline; Write-Host "user      =" -ForegroundColor Green -NoNewline; Write-Host "  $who " -ForegroundColor Yellow 
Write-Host "[+]." -ForegroundColor Magenta -NoNewline; Write-Host "username  = " -ForegroundColor Green -NoNewline; Write-Host " $u"  -ForegroundColor Yellow 
Write-Host "[+]." -ForegroundColor Magenta -NoNewline; Write-Host "Host_name = " -ForegroundColor Green -NoNewline; Write-Host " $hstnm " -ForegroundColor Yellow 
Write-Host "[+]." -ForegroundColor Magenta -NoNewline; Write-Host "Domain    = " -ForegroundColor Green -NoNewline; Write-Host " $dom" -ForegroundColor Yellow
Write-Output ""

while ($true) {
    #option interface
    Animation { Start-Sleep 3 }
    Write-Output ""
    Write-Host "Please select one of the following options" -ForegroundColor White
    Write-Output ""
    Write-Host " *-------------------------------------------------------------------------------*" -ForegroundColor DarkYellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 1." -ForegroundColor Green -NoNewline; Write-Host "  ipadress and other informations" -ForegroundColor Red -NoNewline; Write-Host "                                           | "-ForegroundColor Yellow 
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 2." -ForegroundColor Green -NoNewline; Write-Host "  Users  " -ForegroundColor Red -NoNewline; Write-Host "                                                                   | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 3." -ForegroundColor Green -NoNewline; Write-Host "  Getting User_Details  " -ForegroundColor Red -NoNewline; Write-Host "                                                    | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 4." -ForegroundColor Green -NoNewline; Write-Host "  User Login Information " -ForegroundColor Red -NoNewline; Write-Host "                                                   | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 5." -ForegroundColor Green -NoNewline; Write-Host "  Administrator informations " -ForegroundColor Red -NoNewline; Write-Host "                                               | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 6." -ForegroundColor Green -NoNewline; Write-Host "  Running Process informations " -ForegroundColor Red -NoNewline; Write-Host "                                             | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 7." -ForegroundColor Green -NoNewline; Write-Host "  View Programme Files " -ForegroundColor Red -NoNewline; Write-Host "                                                     | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 8." -ForegroundColor Green -NoNewline; Write-Host "  SMB informations  " -ForegroundColor Red -NoNewline; Write-Host "                                                        | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 9." -ForegroundColor Green -NoNewline; Write-Host "  Firewall Informations" -ForegroundColor Red -NoNewline; Write-Host " (" -ForegroundColor Yellow -NoNewline; Write-Host "This option running only Administrator Powershell" -ForegroundColor Red -NoNewline; Write-Host ")" -ForegroundColor Yellow -NoNewline; Write-Host " | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 10." -ForegroundColor Green -NoNewline; Write-Host " Disable Firewall" -ForegroundColor Red -NoNewline; Write-Host " (" -ForegroundColor Yellow -NoNewline; Write-Host "This option running only Administrator Powershell" -ForegroundColor Red -NoNewline; Write-Host ")" -ForegroundColor Yellow -NoNewline; Write-Host "      | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 11." -ForegroundColor Green -NoNewline; Write-Host " Enable Firewall" -ForegroundColor Red -NoNewline; Write-Host " (" -ForegroundColor Yellow -NoNewline; Write-Host "This option running only Administrator Powershell" -ForegroundColor Red -NoNewline; Write-Host ")" -ForegroundColor Yellow -NoNewline; Write-Host "       | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 12." -ForegroundColor Green -NoNewline; Write-Host " System Access Controls" -ForegroundColor Red -NoNewline; Write-Host "                                                    | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 13." -ForegroundColor Green -NoNewline; Write-Host " System Services " -ForegroundColor Red -NoNewline; Write-Host "                                                          | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 14." -ForegroundColor Green -NoNewline; Write-Host " Dns Entries " -ForegroundColor Red -NoNewline; Write-Host "                                                              | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 15." -ForegroundColor Green -NoNewline; Write-Host " Domain Password Policy  " -ForegroundColor Red -NoNewline; Write-Host "                                                  | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 16." -ForegroundColor Green -NoNewline; Write-Host " List Domain Groups " -ForegroundColor Red -NoNewline; Write-Host "                                                       | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 17." -ForegroundColor Green -NoNewline; Write-Host " List users in Domain Admins " -ForegroundColor Red -NoNewline; Write-Host "                                              | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 18." -ForegroundColor Green -NoNewline; Write-Host " Unlock Domain User Account " -ForegroundColor Red -NoNewline; Write-Host "                                               | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 19." -ForegroundColor Green -NoNewline; Write-Host " Change Domain User Password " -ForegroundColor Red -NoNewline; Write-Host "                                              | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 20." -ForegroundColor Green -NoNewline; Write-Host " View Local Dns Cache " -ForegroundColor Red -NoNewline; Write-Host "                                                     | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 21." -ForegroundColor Green -NoNewline; Write-Host " View Routing Table " -ForegroundColor Red -NoNewline; Write-Host "                                                       | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 22." -ForegroundColor Green -NoNewline; Write-Host " View Arp Tables " -ForegroundColor Red -NoNewline; Write-Host "                                                          | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 23." -ForegroundColor Green -NoNewline; Write-Host " View Saved Wireless Profiles " -ForegroundColor Red -NoNewline; Write-Host "                                             | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 24." -ForegroundColor Green -NoNewline; Write-Host " View Event Viewer " -ForegroundColor Red -NoNewline; Write-Host "                                                        | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 25." -ForegroundColor Green -NoNewline; Write-Host " Domain And Domain_Controller Infomation" -ForegroundColor Red -NoNewline; Write-Host "                                   | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host " 26." -ForegroundColor Green -NoNewline; Write-Host " List All Patches " -ForegroundColor Red -NoNewline; Write-Host "                                                         | "-ForegroundColor Yellow 
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host "     help   " -ForegroundColor Cyan -NoNewline; Write-Host "                                                                   | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host "     exit   " -ForegroundColor Cyan -NoNewline; Write-Host "                                                                   | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host "     clear   " -ForegroundColor Cyan -NoNewline; Write-Host "                                                                  | "-ForegroundColor Yellow
    Write-Host " |" -ForegroundColor Yellow -NoNewline; Write-Host "     exec(execute a command in a shell)   " -ForegroundColor Cyan -NoNewline; Write-Host "                                     | "-ForegroundColor Yellow
    Write-Host " *-------------------------------------------------------------------------------* " -ForegroundColor Yellow
    Write-Output ""

    #collect the user input  
    [string]$option = Read-Host -Prompt "Red_Skull:-"

    if ($option -eq "1") {
        Animation { Start-Sleep 2 }
        $ipadd = (Get-NetIPAddress).IPAddress
        $interface = (Get-NetIPAddress).InterfaceAlias
        
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "Ip_adress" -ForegroundColor Red -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "---------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        $ipadd
        Write-Output ""
        
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "Interfaces" -ForegroundColor Red -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Animation { Start-Sleep 1 }
        Write-Output ""
        $interface
        Write-Output ""
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "2") {
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "All_Users" -ForegroundColor Red -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        net Users
        Write-Output ""
        Animation { Start-Sleep 3 } 
    }
    if ($option -eq "3") {
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "User_Details" -ForegroundColor Red -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "---------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        whoami /all
        Write-Output ""
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "4") {
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "Login_User_Information" -ForegroundColor Red -NoNewline; Write-Host "---------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "---------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        query user /server:$SERVER
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "5") {
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "Administrator_infomation" -ForegroundColor Red -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green 
        Write-Output ""
        Animation { Start-Sleep 1 }
        net localgroup Administrators
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "6") {
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "---------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "Running_Process_Informations" -ForegroundColor Red -NoNewline; Write-Host "---------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "--------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        Process
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "7") {
        Animation { Start-Sleep 2 }
        $pro1 = (dir "c:\program files")
        $pro2 = (dir "c:\program files (x86)")
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "View_Programe_Files" -ForegroundColor Red -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        $pro1
        Write-Output ""
        Animation { Start-Sleep 3 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "View_Programe_Files(x86)" -ForegroundColor Red -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        $pro2
        Animation { Start-Sleep 4 }
    }
    if ($option -eq "8") {
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "SMB_Informations" -ForegroundColor Red -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "----------" -ForegroundColor Red -NoNewline; Write-Host "SMB" -ForegroundColor Green -NoNewline; Write-Host "-" -ForegroundColor Red -NoNewline; Write-Host "Share" -ForegroundColor Green -NoNewline; Write-Host "-" -ForegroundColor Red -NoNewline; Write-Host "INformations" -ForegroundColor Green -NoNewline; Write-Host "---------" -ForegroundColor Red 
        Write-Output ""
        Animation { Start-Sleep 1 }
        powershell.exe Get-SmbShare
        Write-Output ""
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "---------" -ForegroundColor Red -NoNewline; Write-Host "SMB" -ForegroundColor Green -NoNewline; Write-Host "-" -ForegroundColor Red -NoNewline; Write-Host "Configerations" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Red
        Write-Output ""
        Animation { Start-Sleep 1 }
        powershell.exe Get-SmbClientConfiguration
        Write-Output ""
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "----------" -ForegroundColor Red -NoNewline; Write-Host "SMB" -ForegroundColor Green -NoNewline; Write-Host "-" -ForegroundColor Red -NoNewline; Write-Host "Interfaces" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        powershell.exe Get-SmbClientNetworkInterface
        Write-Output ""
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "9") {
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "-----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "---------" -ForegroundColor Yellow -NoNewline; Write-Host "Firewall_Informations" -ForegroundColor Red -NoNewline; Write-Host "---------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "---------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "----------" -ForegroundColor Red -NoNewline; Write-Host "Firewall_Rules" -ForegroundColor Green -NoNewline; Write-Host "---------" -ForegroundColor Red
        Write-Output ""
        Animation { Start-Sleep 1 }
        powershell.exe Get-NetFirewallRule >> Firewall.txt
        $pth = pwd
        Write-Output "File saved : $pth \Firewall.txt"
        Write-Output ""
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "----------" -ForegroundColor Red -NoNewline; Write-Host "Filter_Address" -ForegroundColor Green -NoNewline; Write-Host "---------" -ForegroundColor Red
        Write-Output ""
        Animation { Start-Sleep 1 }
        powershell.exe Get-NetFirewallAddressFilter >> fltr-add.txt
        Write-Output "File saved : $pth\fltr-add.txt"
        Write-Output ""
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "----------" -ForegroundColor Red -NoNewline; Write-Host "Filter-App" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Red
        Write-Output ""
        Animation { Start-Sleep 1 }
        powershell.exe Get-NetFirewallApplicationFilter >> fltr-app.txt
        Write-Output "File saved : $pth\fltr-app.txt"
        Write-Output ""
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "----------" -ForegroundColor Red -NoNewline; Write-Host "Filter-Interfaces" -ForegroundColor Green -NoNewline; Write-Host "---------" -ForegroundColor Red
        Write-Output ""
        Animation { Start-Sleep 1 }
        powershell.exe Get-NetFirewallInterfaceFilter >> fltr-intf.txt
        Write-Output "File saved : $pth\fltr-intf.txt"
        Write-Output ""
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "----------" -ForegroundColor Red -NoNewline; Write-Host "Filter-Ports" -ForegroundColor Green -NoNewline; Write-Host "-----------" -ForegroundColor Red
        Write-Output ""
        Animation { Start-Sleep 1 }
        powershell.exe Get-NetFirewallPortFilter >> fltr-pts.txt
        Write-Output "File saved : $pth\fltr-pts.txt"
        Write-Output ""
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "----------" -ForegroundColor Red -NoNewline; Write-Host "Firewall-Profile" -ForegroundColor Green -NoNewline; Write-Host "---------" -ForegroundColor Red
        Write-Output ""
        Animation { Start-Sleep 1 }
        powershell.exe Get-NetFirewallProfile
        Write-Output ""
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "10") {
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "Disable_Firewall" -ForegroundColor Red -NoNewline; Write-Host "---------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "--------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        powershell.exe netsh advfirewall set currentprofile state off
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "11") {
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "Enable_Firewall" -ForegroundColor Red -NoNewline; Write-Host "---------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "--------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        powershell.exe netsh advfirewall set currentprofile state on
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "12") {
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "System_Access_Controls" -ForegroundColor Red -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 } 
        powershell.exe Get-Acl
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "13") {
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "System-Services" -ForegroundColor Red -NoNewline; Write-Host "-----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        powershell.exe Get-Service
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "help") {
        Animation { Start-Sleep 1 }
        help
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "14") {
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "Dns_Entries" -ForegroundColor Red -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        Get-Content C:\Windows\System32\drivers\etc\hosts
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "15") {
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "Domain_Password_Policy" -ForegroundColor Red -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        powershell.exe net accounts /domain
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "16") {
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "List_Domain_Groups" -ForegroundColor Red -NoNewline; Write-Host "---------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        powershell.exe net group /domain
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "17") {
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "List_users_in_Domain_Admins" -ForegroundColor Red -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        powershell.exe net group "Domain Admins" /domain
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "18") {
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "Unlock_Domain_User_Accounts" -ForegroundColor Red -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "-----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        [string]$Userinpts = Read-Host -Prompt "Enter Current Username:-"
        powershell.exe net user $Userinpts /ACTIVE:yes /domain
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "19") {
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "Change_Domain_User_Password" -ForegroundColor Red -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        [string]$Userinpts = Read-Host -Prompt "Enter Current Username:-"
        [string]$Passinpts = Read-Host -Prompt "Enter New Password:-"
        powershell.exe net user $Userinpts "$Passinpts" /domain
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "20") {
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "View_Local_Dns_Cache" -ForegroundColor Red -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        powershell.exe ipconfig /displaydns
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "21") {
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "View_Routing_Tables" -ForegroundColor Red -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        powershell.exe route print
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "22") {
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "View_Arp_Table" -ForegroundColor Red -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "---------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        powershell.exe arp -a
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "23") {
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "View_Saved_Wireless_Profiles" -ForegroundColor Red -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        powershell.exe netsh wlan show profiles
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "24") {
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "View_Event_Viewer" -ForegroundColor Red -NoNewline; Write-Host "---------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        powershell.exe Get-EventLog -List
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "25") {
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "Domain_And_Domain_Controller_Information" -ForegroundColor Red -NoNewline; Write-Host "--------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "--------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        powershell.exe wmic ntdomain list
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "26") {
        Animation { Start-Sleep 1 }
        Write-Output ""
        Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "List_All_Patches" -ForegroundColor Red -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green -NoNewline; Write-Host "----------" -ForegroundColor Yellow -NoNewline; Write-Host "##" -ForegroundColor Green
        Write-Output ""
        Animation { Start-Sleep 1 }
        powershell.exe wmic qfe
        Animation { Start-Sleep 3 }
    }
    if ($option -eq "clear") {
        powershell.exe clear
    }
    if ($option -eq "exit") {
        exit        
    }
    if ($option -eq "exec") {
        [string]$exec = Read-Host -Prompt "$ "
        powershell $exec
    }
}
