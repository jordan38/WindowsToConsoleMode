# $pcMonitor = "SAM0B65";
$tvMonitor = "GSM0001";
$tvMonitorIndex = 1

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
$instanceName = $monitor.InstanceName.split('\')[$tvMonitorIndex];

if (isTvMonitor $instanceName) {
    consoleProgram;
} else {
    pcProgram;
}