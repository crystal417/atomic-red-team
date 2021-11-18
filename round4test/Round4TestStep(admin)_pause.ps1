# 이 스크립트는 Round4TestStep.ps1 실행 전에 관리자 권한으로 먼저 수행해야 함
 
$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="c:\round4test\atomics"}
$ExecutionLogPath = "C:\round4test\atomictest(admin).log"
$isAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).isInRole([Security.Principal.WindowsBuiltinRole]::Administrator) # 관리자 권한 확인


Import-Module "C:\round4test\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force
Stop-Transcript
Start-Transcript "C:\round4test\Round4TestStep(admin)_pause.ps1.log"

$sleeptime = 10
# Prerequistes

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest t1059.001 -testnumber 14 -getprereq -ExecutionLogPath $ExecutionLogPath #추후 제공예정


##############################################################
# Execution
##############################################################

#------------------------------------------------------------
# Execution - Command and Scripting Interpreter(T1059) T1059.001 - PowerShell
write-host "T1059.001 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 11 -cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 14 -getprereq -ExecutionLogPath $ExecutionLogPath # 관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 14 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
timeout /t $sleeptime
#------------------------------------------------------------

# Execution - Scheduled Task/Job(T1053)  
## Scheduled Task Startup Script
write-host "T1053.005 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1053.005 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1053.005 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1053.005 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1053.005 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

## Powershell Cmdlet Scheduled Task
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1053.005 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1053.005 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

##WMI Invoke-CimMethod Scheduled Task
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1053.005 -testnumber 6 -ExecutionLogPath $ExecutionLogPath     #관리자 권한 
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1053.005 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath     #관리자 권한 
timeout /t $sleeptime

## Scheduled task Remote
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1053.005A -testnumber 1 -ExecutionLogPath $ExecutionLogPath   #T1053.005 3
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1053.005A -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath   #T1053.005 3
#timeout /t $sleeptime

# Execution - System Services(T1569)	Service Execution
write-host "T1569.002 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1569.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1569.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

write-host "T1543.003 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1543.003 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한 
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1543.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1543.003 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자권한
timeout /t $sleeptime

write-host "T1047 Process Start, Press Any Key to Continue";read-host
#Atomic Test #8 - Create a Process using obfuscated Win32_Process
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1047 -testnumber 8 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1047 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime


##############################################################
# Persistence
##############################################################


#Persistence - Boot or Logon Autostart Execution(T1547)
write-host "T1547.001 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

#------------------------------------------------------------
# Persistence - Boot or Logon Autostart Execution(T1547) T1547.005 - Security Support Provider
write-host "T1547.005 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.005 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

#------------------------------------------------------------
# Persistence - Boot or Logon Autostart Execution(T1547) T1547.009 - Shortcut Modification
write-host "T1547.009 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.009 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.009 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime


# T1136.001 - Local Account
write-host "T1136.001 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1136.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1136.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1136.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1136.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1136.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1136.001 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

# Persistence - Create Account(T1136) : T1136.002 - Domain Account
write-host "T1136.002 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1136.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1136.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한 
timeout /t $sleeptime


#Persistence - Create or Modify System Process(T1543)
write-host "T1543.003 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1543.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1543.003 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1543.003 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1543.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1543.003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1543.003 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1543.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1543.003 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

#------------------------------------------------------------
# Persistence - Hijack Execution Flow(T1574) T1574.007A - Path Interception by PATH Environment Variable
write-host "T1574.007A Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1574.007A -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Persistence - Hijack Execution Flow(T1574) T1574.009 - Path Interception by Unquoted Path
write-host "T1574.009 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1574.009 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1574.009 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

#------------------------------------------------------------
# Persistence - Hijack Execution Flow(T1574) T1574.010A - Service File Permissions Weakness
write-host "T1574.010 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1574.010A -testnumber 1  -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1574.010A -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1574.010A -testnumber 1 -cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

#------------------------------------------------------------
# Persistence - Valid Accounts(T1078) T1078.001 - Default Accounts
#T1078.001 - Default Accounts
write-host "T1078.001 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1078.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1078.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

#------------------------------------------------------------
# Persistence - Valid Accounts(T1078) T1078.003A - Local Accounts
# 1078.001과 동일 
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1078.003A -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1078.003A -testnumber 1 -Cleanup -ExecutionLogPath $Executio #관리자 권한


##############################################################
# Privilege Escalation
##############################################################

#Privilege Escalation - Abuse Elevation Control Mechanism(T1548)
write-host "T1548.002 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1548.002 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1548.002 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1548.002 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1548.002 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1548.002 -testnumber 8 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1548.002 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime


#------------------------------------------------------------
# Privilege Escalation - Process Injection(T1055) T1055.001 Dynamic-link Library Injection
write-host "T1055.001 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1055.001 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1055.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime


##############################################################
# Defense Evasion
##############################################################

#------------------------------------------------------------
# Defense Evasion - File and Directory Permissions Modification(T1222) T1222.001 Windows File and Directory Permissions Modification
write-host "T1222.001 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1222.001 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1222.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1222.001 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

# Defense Evasion - Impair Defenses(T1562) T1562.001 Disable or Modify Tools
write-host "T1562.001 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 10 -getprereq -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 11 -getprereq -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 12 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 13 -ExecutionLogPath $ExecutionLogPath #관리자 권한 
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 13 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한 
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 14 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #McAfeeDLPAgentService 서비스 필요.
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 14 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 15 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #windows defender atp. 설치 필요
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 15 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한 #windows defender atp. 설치 필요
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 16 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #Windwos Defender disable, access denied
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 16 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한 #Windwos Defender disable, access denied
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 17 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 17 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 19 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #테스트 실패
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 20 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #McAfeeDLPAgentService 서비스 필요.
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 21 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 22 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 22 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 23 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 23 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 24 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 24 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

#------------------------------------------------------------
# Defense Evasion - T1562.002 - Disable Windows Event Logging
write-host "T1562.002 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.002 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.002 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.002 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
#------------------------------------------------------------
# Defense Evasion - Indicator Removal on Host(T1070) T1070.001 Clear Windows Event Logs
#Atomic Test #1 - Clear Logs
write-host "T1070.001 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1070.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한 
timeout /t $sleeptime

#Atomic Test #2 - Delete System Logs Using Clear-EventLog
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1070.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

#Atomic Test #3 - Clear Event Logs via VBA
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1070.001 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1070.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

#------------------------------------------------------------
# Defense Evasion - Indicator Removal on Host(T1070) T1070.004 File Deletion
# Atomic Test #9 - Delete Prefetch File
write-host "T1070.004 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1070.004 -testnumber 9 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime


#------------------------------------------------------------
# Defense Evasion - Masquerading(T1036) T1036.004 - Masquerade Task or Service
write-host "T1036.004 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1036.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1036.004 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1036.004 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1036.004 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

#------------------------------------------------------------
# Defense Evasion - Modify Registry T1112 - Modify Registry
#Atomic Test #2 - Modify Registry of Local Machine - cmd
write-host "T1112 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

#Atomic Test #3 - Modify registry to store logon credentials
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

# T1112 - Atomic Test #6 - Change Powershell Execution Policy to Bypass
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime


#------------------------------------------------------------
# Defense Evasion - Subvert Trust Controls(T1553) T1553.006 Code Signing Policy Modification
write-host "T1553.006A Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1553.006A -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한 필요
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1553.006A -Cleanup -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한 필요
timeout /t $sleeptime

##############################################################
# credential Access
##############################################################
#------------------------------------------------------------
# Credential Access - Credentials from Password Stores(T1555) T1555.003 - Credentials from Web Browsers
write-host "T1555.003 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1555.003 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1555.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

#------------------------------------------------------------

#Credential Access - Network Sniffing
write-host "T1040 Process Start, Press Any Key to Continue";read-host
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1040 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 240 #wireshark 설치 url변경됨, 다운로드 속도 오래걸림. 타임아웃 증가, 사전 설치로 변경 #관리자 권한
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1040 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1040 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #manual
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1040 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 60 #프로그램 실행종료후 입력대기 문제로 120초 타임아웃 발생. 60초로 제한시간 수정

#Credential Access - OS Credential Dumping
write-host "T1003 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한 #manual
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #manual
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한 #manual

write-host "T1003.001 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #GUI 테스트
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 7 -GetPrereqs -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 9 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 9 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 11 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #.net5 설치 필요
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 12 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 12 -ExecutionLogPath $ExecutionLogPath #실행시 에러발생하나 실행은 완료됨.
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

write-host "T1003.002 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.002 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.002 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

#------------------------------------------------------------
# Credential Access - OS Credential Dumping(T1003) T1003.003A - NTDS
write-host "T1003.003 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.003 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.003 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.003 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.003 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.003 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.003 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.003 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime



##############################################################
# Discovery
##############################################################
#------------------------------------------------------------
# Discovery - Remote System Discovery(T1018) T1018 - Remote System Discovery
# Atomic Test #8 - Remote System Discovery - nslookup
write-host "T1018 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1018 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #9 - Remote System Discovery - adidnsdump
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1018 -testnumber 9 -ExecutionLogPath $ExecutionLogPath #관리자
timeout /t $sleeptime

#------------------------------------------------------------
# Discovery - System Network Connections Discovery(T1049) T1049 - System Network Connections Discovery
write-host "T1049 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1049 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath  #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1049 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime


##############################################################
# Lateral Movement
##############################################################
#------------------------------------------------------------
# Lateral Movement - Remote Services(T1021) - T1021.002 - SMB/Windows Admin Shares
write-host "T1021.002 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1021.002 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1021.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 30 
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1021.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Lateral Movement - Remote Services(T1021) - T1021.006 - Windows Remote Management
write-host "T1021.006 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1021.006 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1021.006 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한 #get_prereq_command 실행 안됨 
#timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1021.006 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한 
timeout /t $sleeptime

##############################################################
# Collection
##############################################################


##############################################################
# Command and Controll
##############################################################
write-host "T1003.004 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.004 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.004 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath  #관리자 권한
timeout /t $sleeptime

#------------------------------------------------------------
# Credential Access - Unsecured Credentials(T1552) T1552.001 - Credentials In Files
write-host "T1552.001 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1552.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath  #관리자 권한
timeout /t $sleeptime

#------------------------------------------------------------
#Command and Control - Ingress Tool Transfer - T1105 - Ingress Tool Transfer
write-host "T1105 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1105 -testnumber 11 -ExecutionLogPath $ExecutionLogPath #echo 뒤에 ' 추가  #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1105 -testnumber 12 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1105 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

#------------------------------------------------------------
#Command and Control - Proxy(T1090)
write-host "T1090.001 Process Start, Press Any Key to Continue";read-host
T1090.001 - Internal Proxy - Atomic Test #3 - portproxy reg key
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1090.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1090.001 -testnumber 3 -cleanup -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime

#------------------------------------------------------------
#Command and Control - Remote Access Software - T1219 - Remote Access Software
write-host "T1219 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1219 -testnumber 1 -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 300 #Teamviewer.exe 실행 전 start-sleep 10 추가 #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1219 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1219 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1219 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1219 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Start-Process $file1 /quiet 변경 #Start-Sleep 10 추가 #C:\Program Files (x86)\LogMeIn Ignition 변경 #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1219 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

##############################################################
# Exfiltration
##############################################################


##############################################################
# Impact
##############################################################

#------------------------------------------------------------
#Impact - Inhibit System Recovery(T1490) T1490 - Inhibit System Recovery

# Atomic Test #1 - Windows - Delete Volume Shadow Copies
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1490 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #DC에서 실행 #관리자 권한
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1490 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #DC에서 실행 #관리자 권한

# Atomic Test #2 - Windows - Delete Volume Shadow Copies via WMI
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1490 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #DC에서 실행 (추가) #관리자 권한
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1490 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #실행 전에 SHADOW COPY 생성 필요함. #DC에서 

# Atomic Test #3 - Windows - wbadmin Delete Windows Backup Catalog
write-host "T1490 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1490 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

# Atomic Test #4 - Windows - Disable Windows Recovery Console Repair
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1490 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1490 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

# Atomic Test #5 - Windows - Delete Volume Shadow Copies via WMI with PowerShell
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1490 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #DC에서 실행 (추가) #관리자 권한
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1490 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #실행 전에 SHADOW COPY 생성 필요함. #DC에서 실행 #관리자 권한
timeout /t $sleeptime

# Atomic Test #6 - Windows - Delete Backup Files
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1490 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

# Atomic Test #7 - Windows - wbadmin Delete systemstatebackup
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1490 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #제외. 해당 Windows 버전에서 미지원

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1490A -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1490A -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1490A -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1490A -testnumber 2 -ExecutionLogPath $ExecutionLogPath #DC에서 실행 #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1490A -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1490A -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

#------------------------------------------------------------
#Impact - Service Stop(T1489) T1489 - Service Stop

# Atomic Test #1 - Windows - Stop service using Service Controller
write-host "T1489 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1489 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1489 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

# Atomic Test #2 - Windows - Stop service using net.exe
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1489 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1489 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime

# Atomic Test #3 - Windows - Stop service by killing process
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1489 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime


#------------------------------------------------------------
#Impact - System Shutdown/Reboot(T1529) T1529 - System Shutdown/Reboot

# Atomic Test #1 - Shutdown System - Windows
# invoke-atomictest T1529 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #수동 실행

# Atomic Test #2 - Restart System - Windows
# invoke-atomictest T1529 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 원한 #수동 실행


Stop-Transcript