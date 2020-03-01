# $pcMonitor = "DISPLAY\SAM0B65\5&8fb9b9b&0&UID4353_0";
$tvMonitor = "DISPLAY\GSM0001\5&8fb9b9b&0&UID4353_0";

function isTvMonitor {
    param(
         [string]
         [Parameter(Mandatory = $true, Position=0)]
         $CurrentMonitor)
    return $CurrentMonitor -eq $tvMonitor
}

function consoleProgram() {
    D:\Steam\steam.exe -bigpicture
}

function pcProgram() {
    C:\Users\jorda\AppData\Roaming\Dashlane\Dashlane.exe
    C:\Users\jorda\AppData\Roaming\Dashlane\DashlanePlugin.exe
}

$monitor = Get-CimInstance -Namespace root\wmi -ClassName wmimonitorid;
$instanceName = $monitor.InstanceName;

if (isTvMonitor $instanceName) {
    consoleProgram;
} else {
    pcProgram;
}