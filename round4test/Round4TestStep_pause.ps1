
$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="c:\round4test\atomics"}
$ExecutionLogPath = "C:\round4test\atomictest.log"
Import-Module "C:\round4test\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force


$sleeptime = 10
##############################################################
# Execution
##############################################################

#------------------------------------------------------------
# Execution - Command and Scripting Interpreter(T1059) T1059.001 - PowerShell
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest t1059.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#timeout /t $sleeptime

write-host "T1059.001 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 2 -getprereq -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath   # AD에서 테스트해야 함.
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 2 -cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 3 -cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest t1059.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#timeout /t $sleeptime 

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath   # IP/PW 요구
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 9 -ExecutionLogPath $ExecutionLogPath   # Enter 입력 필요
timeout /t $sleeptime

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest t1059.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest t1059.001 -testnumber 11 -cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 13 -getprereq -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 13 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 13 -cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest t1059.001 -testnumber 14 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 15 -getprereq -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 15 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
 
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 16 -getprereq -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 16 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
 
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 17 -getprereq -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 17 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
 
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 18 -getprereq -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001 -testnumber 18 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
 
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001A -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.001A -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
 
#------------------------------------------------------------
# Execution - Command and Scripting Interpreter(T1059) T1059.003 - Windows Command Shell
write-host "T1059.003 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.003 -testnumber 1 -getprereq -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.003 -testnumber 1 -cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
 
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.003 -testnumber 2 -cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
 
#------------------------------------------------------------
# Execution - Command and Scripting Interpreter(T1059) T1059.004 - Unix Shell
# N/A


#------------------------------------------------------------
# Execution - Command and Scripting Interpreter(T1059) T1509.005 - Visual Basic
write-host "T1059.005 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.005 -testnumber 1 -getprereq -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.005 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.005 -testnumber 1 -cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
 
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.005 -testnumber 2 -getprereq -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.005 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.005 -testnumber 2 -cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
 
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.005 -testnumber 3 -getprereq -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.005 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.005 -testnumber 3 -cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
 
#------------------------------------------------------------
# Execution - Excute python script(T1059) T1509.006A - Python
write-host "t1059.006 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.006A -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Execution - Command and Scripting Interpreter(T1059) T1509.007A - JavaScript
write-host "t1059.007 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.007A -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.007A -testnumber 1 -cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1059.007A -testnumber 2 -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 10 
timeout /t $sleeptime

#------------------------------------------------------------
# Execution - Command and Scripting Interpreter(T1559) Inter-Process Communication(T1559)

#------------------------------------------------------------
# Execution - Native API (T1106 )- Execution through API - CreateProcess
write-host "T1106 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1106 -testnumber 1   -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime


#------------------------------------------------------------
# ExecutionS - Scheduled Task/Job(T1053) - T1053.003 - Cron T1053.003 - Cron
# 리눅스.MacOS 대상

#------------------------------------------------------------
# Execution - Scheduled Task/Job(T1053)  T1053.005 - Scheduled Task

## Scheduled Task Startup Script
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1053.005 -testnumber 1 -ExecutionLogPath $ExecutionLogPath     #관리자 권한 
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1053.005 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath     #관리자 권한 
#timeout /t $sleeptime

## Scheduled task Local
write-host "T1053.005 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1053.005 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1053.005 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1053.005 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1053.005 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
#timeout /t $sleeptime

## Powershell Cmdlet Scheduled Task  #관리자 권한 
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1053.005 -testnumber 4 -ExecutionLogPath $ExecutionLogPath      #관리자 권한 
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1053.005 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath     #관리자 권한 
#timeout /t $sleeptime

##Task Scheduler via VBA
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1053.005 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1053.005 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

##WMI Invoke-CimMethod Scheduled Task
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1053.005 -testnumber 6 -ExecutionLogPath $ExecutionLogPath     #관리자 권한 
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1053.005 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath     #관리자 권한 
#timeout /t $sleeptime

## Scheduled task Remote
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1053.005A -testnumber 1 -ExecutionLogPath $ExecutionLogPath   #T1053.005 3
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1053.005A -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath   #T1053.005 3
#timeout /t $sleeptime

#------------------------------------------------------------
# Execution - Software Deployment Tools(T1072)
# 테스트 생략

#------------------------------------------------------------
# Execution - System Services(T1569)	T1569.002 - Service Execution
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1569.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1569.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
write-host "T1569.002 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1569.002 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1569.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #계정 권한 필요 
timeout /t $sleeptime

## 대체함 
# invoke-atomictest T1543.003 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한 
#timeout /t $sleeptime
# invoke-atomictest T1543.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
# invoke-atomictest T1543.003 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자권한
#timeout /t $sleeptime

#------------------------------------------------------------
# Execution - User Execution (T1204) T1204.001 - Malicious Link 

#------------------------------------------------------------
# Execution - User Execution (T1204) T1204.002 - Malicious File
write-host "T1204.002 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1204.002 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1204.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1204.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1204.002A -testnumber 1 -ExecutionLogPath $ExecutionLogPath #T1204.002. 2
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1204.002A -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #T1204.002. 2
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1204.002 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1204.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1204.002 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1204.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1204.002 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1204.002 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1204.002 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1204.002 -testnumber 6 -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 30 
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1204.002 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1204.002 -testnumber 7 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1204.002 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1204.002 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1204.002 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Execution - Windows Management Instrumentation (T1047) Windows Management Instrumentation(T1047)
write-host "T1047 Process Start, Press Any Key to Continue";read-host
# Atomic Test #1 - WMI Reconnaissance Users
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1047 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #2 - WMI Reconnaissance Processes
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1047 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #3 - WMI Reconnaissance Software
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1047 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#Atomic Test #4 - WMI Reconnaissance List Remote Services
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1047 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#Atomic Test #5 - WMI Execute Local Process
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1047 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1047 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#Atomic Test #6 - WMI Execute Remote Process
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1047 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #계정정보입력 필요
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1047 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#Atomic Test #7 - Create a Process using WMI Query and an Encoded Command
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1047 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#Atomic Test #8 - Create a Process using obfuscated Win32_Process
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1047 -testnumber 8 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1047 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime



##############################################################
# Persistence
##############################################################

#------------------------------------------------------------
# Persistence - Account Manipulation(T1098) T1098.004 - SSH Authorized Keys


#------------------------------------------------------------
# Persistence - BITS Jobs (T1197)
write-host "T1197 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1197 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1197 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1197 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1197 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1197 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1197 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1197 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1197 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Persistence - Boot or Logon Autostart Execution(T1547) T1547.001 - Registry Run Keys / Startup Folder
write-host "T1547.001 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1547.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1547.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1547.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1547.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1547.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1547.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1547.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1547.001 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1547.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1547.001 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1547.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1547.001 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime

#------------------------------------------------------------
# Persistence - Boot or Logon Autostart Execution(T1547) T1547.004 - Winlogon Helper DLL
write-host "T1547.004 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.004 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.004 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.004 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.004 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.004 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Persistence - Boot or Logon Autostart Execution(T1547) T1547.005 - Security Support Provider
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1547.005 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime

#------------------------------------------------------------
# Persistence - Boot or Logon Autostart Execution(T1547) T1547.006 - Kernel Modules and Extensions
# Linux, MacOS 대상 

#------------------------------------------------------------
# Persistence - Boot or Logon Autostart Execution(T1547) T1547.009 - Shortcut Modification
write-host "T1547.009 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.009 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.009 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.009 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.009 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Persistence - Create Account(T1136) : T1136.001 - Local Account
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1136.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1136.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1136.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1136.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1136.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1136.001 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime


#------------------------------------------------------------
# Persistence - Create Account(T1136) : T1136.002 - Domain Account
# 다시 테스트 ( 2021.06.22 이명수)
write-host "T1136.002 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1136.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1136.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한 
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1136.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1136.002 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1136.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1136.002 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime


#------------------------------------------------------------
# Persistence - Create or Modify System Process(T1543) T1543.002 - Systemd Service
# 리눅스, MacOS 대상

#------------------------------------------------------------
# Persistence - Create or Modify System Process(T1543) T1543.003 - Windows Service
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1543.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1543.003 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1543.003 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1543.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1543.003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1543.003 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1543.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1543.003 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime

#------------------------------------------------------------
# Persistence - External Remote Services(T1133) T1133 - External Remote Services


#------------------------------------------------------------
# Persistence - Hijack Execution Flow(T1574) T1574.001 - DLL Search Order Hijacking
write-host "T1574.001 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1574.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1574.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Persistence - Hijack Execution Flow(T1574) T1574.007A - Path Interception by PATH Environment Variable
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1574.007A -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

#------------------------------------------------------------
# Persistence - Hijack Execution Flow(T1574) T1574.008A - Path Interception by Search Order Hijacking
write-host "T1574.008 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1574.008A -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1574.008A -testnumber 1 -cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
#------------------------------------------------------------
# Persistence - Hijack Execution Flow(T1574) T1574.009 - Path Interception by Unquoted Path
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1574.009 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1574.009 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime

#------------------------------------------------------------
# Persistence - Hijack Execution Flow(T1574) T1574.010A - Service File Permissions Weakness
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1574.010A -testnumber 1  -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1574.010A -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1574.010A -testnumber 1 -cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime

#------------------------------------------------------------
# Persistence - Scheduled Task/Job(T1053) T1053.003 - Cron
# 리눅스, MacOS 대상

#------------------------------------------------------------
# Persistence - Scheduled Task/Job(T1053) T1053.005 - Scheduled Task
# 공통, 중복


#------------------------------------------------------------
# Persistence - Server Software Component(T1505) T1505.003A - Web Shell
write-host "T1505.003 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1505.003A -testnumber 1 -ExecutionLogPath $ExecutionLogPath  
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1505.003A -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Persistence - Valid Accounts(T1078) T1078.001 - Default Accounts
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1078.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1078.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

#------------------------------------------------------------
# Persistence - Valid Accounts(T1078) T1078.002 - Domain Accounts
# 1078.001과 동일 
 
#------------------------------------------------------------
# Persistence - Valid Accounts(T1078) T1078.003A - Local Accounts
# 1078.001과 동일 
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1078.003A -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1078.003A -testnumber 1 -Cleanup -ExecutionLogPath $Executio #관리자 권한
#timeout /t $sleeptime


##############################################################
# Privilege Escalation
##############################################################

#------------------------------------------------------------
# Privilege Escalation - Abuse Elevation Control Mechanism(T1548) - T1548.001 - Setuid and Setgid
# 리눅스, MacOS 대상

#------------------------------------------------------------
# Privilege Escalation - Abuse Elevation Control Mechanism(T1548) - T1548.002 - Bypass User Account Control
write-host "T1548.002 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1548.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1548.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1548.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1548.002 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1548.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1548.002 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1548.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1548.002 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1548.002 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1548.002 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1548.002 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1548.002 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1548.002 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1548.002 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1548.002 -testnumber 8 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1548.002 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1548.002 -testnumber 9 -ExecutionLogPath $ExecutionLogPath #실행은 성공되나 파워쉘이 종료됨 #manual 테스트
#timeout /t $sleeptime

#------------------------------------------------------------
# Privilege Escalation - Access Token Manipulation(T1134) - T1134.005 - SID-History Injection
# 공통, 중복

#------------------------------------------------------------
# Privilege Escalation - Boot or Logon Autostart Execution(T1547) - T1134-001 Registry Run Keys / Startup Folder
# 공통, 중복

#------------------------------------------------------------
# Privilege Escalation - Boot or Logon Autostart Execution(T1547) - T1134-004 Winlogon Helper DLL
# 공통, 중복

#------------------------------------------------------------
# Privilege Escalation - Boot or Logon Autostart Execution(T1547) - T1134-005 Security Support Provider
# 공통, 중복

#------------------------------------------------------------
# Privilege Escalation - Boot or Logon Autostart Execution(T1547) - T1134-006 Kernel Modules and Extensions
# 공통, 중복

#------------------------------------------------------------
# Privilege Escalation - Boot or Logon Autostart Execution(T1547) - T1134-009 Shortcut Modification
# 공통, 중복

#------------------------------------------------------------
# Privilege Escalation - Create or Modify System Process(T1543) T1153.003 Windows Service

#------------------------------------------------------------
# Privilege Escalation - Domain Policy Modification(T1484) T1484-001 Group Policy Modification
# DC에서 테스트

#------------------------------------------------------------
# Privilege Escalation - Hijack Execution Flow(T1574) T1574.001 DLL Search Order Hijacking
# 공통 중복

#------------------------------------------------------------
# Privilege Escalation - Hijack Execution Flow(T1574) T1574.007 Path Interception by PATH Environment Variable
# 공통 중복

#------------------------------------------------------------
# Privilege Escalation - Hijack Execution Flow(T1574) T1574.008 Path Interception by Search Order Hijacking
# 공통 중복

#------------------------------------------------------------
# Privilege Escalation - Hijack Execution Flow(T1574) T1574.009 Path Interception by Unquoted Path
# 공통 중복

#------------------------------------------------------------
# Privilege Escalation - Hijack Execution Flow(T1574) T1574.010 Services File Permissions Weakness
# 공통 중복

#------------------------------------------------------------
# Privilege Escalation - Process Injection(T1055) T1055.001 Dynamic-link Library Injection
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1055.001 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1055.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#timeout /t $sleeptime

#------------------------------------------------------------
# Privilege Escalation - Process Injection(T1055) T1055.002 Portable Executable Injection

#------------------------------------------------------------
# Privilege Escalation - Process Injection(T1055) T1055.012 Process Hollowing
write-host "T1055.012 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1055.012 -testnumber 1 -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1055.012 -testnumber 1 -cleanup -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime

#------------------------------------------------------------
# Privilege Escalation - Scheduled Task/Job(T1053)	T1053.005 Scheduled Task
# 공통 중복

#------------------------------------------------------------
# Privilege Escalation - Valid Accounts(T1078) T1078.001 Default Accounts
 # 공통 중복

#------------------------------------------------------------
# Privilege Escalation - Valid Accounts(T1078) T1078.002 Domain Accounts
# 공통 중복

#------------------------------------------------------------
# Privilege Escalation - Valid Accounts(T1078) T1078.003 Local Accounts
# 공통 중복

##############################################################
# Defense Evasion
##############################################################

#------------------------------------------------------------
# Defense Evasion - Abuse Elevation Control Mechanism(T1548) T1548.002 Bypass User Account Contro
# 공통, 중복

#------------------------------------------------------------
# Defense Evasion - Access Token Manipulation(T1134) T1134.005 SID-History Injection
# 공통, 중복

#------------------------------------------------------------
# Defense Evasion - BITS Jobs(T1197) 
# 공통, 중복

#------------------------------------------------------------
# Defense Evasion - Deobfuscate/Decode Files or Information(T1140)
write-host "T1140 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1140 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1140 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1140 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1140 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Defense Evasion - Domain Policy Modification(T1484) T1484.001 Group Policy Modification
# 공통 중복

#------------------------------------------------------------
# Defense Evasion - File and Directory Permissions Modification(T1222) T1222.001 Windows File and Directory Permissions Modification
write-host "T1222.001 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1222.001 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1222.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1222.001 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1222.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1222.001 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1222.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1222.001 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1222.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1222.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1222.001 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1222.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1222.001 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime

#------------------------------------------------------------
# Defense Evasion - Hijack Execution Flow(T1574) T1574.001 DLL Search Order Hijacking
# 공통 중복

#------------------------------------------------------------
# Defense Evasion - Hijack Execution Flow(T1574) T1574.007 Path Interception by PATH Environment Variable
# 공통 중복

#------------------------------------------------------------
# Defense Evasion - Hijack Execution Flow(T1574) T1574.008 Path Interception by Search Order Hijacking
# 공통 중복

#------------------------------------------------------------
# Defense Evasion - Hijack Execution Flow(T1574) T1574.009 Path Interception by Unquoted Path
# 공통 중복

#------------------------------------------------------------
# Defense Evasion - Hijack Execution Flow(T1574) T1574.010 Services File Permissions Weakness
# 공통 중복

#------------------------------------------------------------
write-host "T1562.001 Process Start, Press Any Key to Continue";read-host
# Defense Evasion - Impair Defenses(T1562) T1562.001 Disable or Modify Tools
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 12 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 13 -ExecutionLogPath $ExecutionLogPath #관리자  권한 #McAfeeDLPAgentService 서비스가 설치되어야함. getprereqs를 작성해야할것으로 보임.
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 13 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한 #McAfeeDLPAgentService 서비스가 설치되어야함. getprereqs를 작성해야할것으로 보임.
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 14 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 14 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
##$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 15 -ExecutionLogPath $ExecutionLogPath #관리자  권한 #windows defender atp. 설치 필요
#timeout /t $sleeptime
##$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 15 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한 #windows defender atp. 설치 필요
#timeout /t $sleeptime
##$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 16 -ExecutionLogPath $ExecutionLogPath #관리자  권한 #Windwos Defender disable, access denied
#timeout /t $sleeptime
##$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 16 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한 #Windwos Defender disable, access denied
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 17 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 17 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 18 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 18 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
##$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 19 -ExecutionLogPath $ExecutionLogPath #관리자  권한 #테스트 실패
#timeout /t $sleeptime
##$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 20 -ExecutionLogPath $ExecutionLogPath #관리자  권한 #McAfeeDLPAgentService 서비스 필요.
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 21 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 22 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 22 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 23 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 23 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 24 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 24 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime

#------------------------------------------------------------
# Defense Evasion - Impair Defenses(T1562) T1562.002 Disable Windows Event Logging
write-host "T1562.002 Process Start, Press Any Key to Continue";read-host
#Atomic Test #1 - Disable Windows IIS HTTP Logging
# 재테스트필요
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#Atomic Test #2 - Kill Event Log Service Threads
#재태스트 필요
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.002 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

#Atomic Test #3 - Impair Windows Audit Log Policy
#재태스트 필요
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.002 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

#Atomic Test #4 - Clear Windows Audit Policy Config
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.002 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime


#------------------------------------------------------------
# Defense Evasion - Indicator Removal on Host(T1070) T1070.001 Clear Windows Event Logs
#Atomic Test #1 - Clear Logs
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1070.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한 
#timeout /t $sleeptime

#Atomic Test #2 - Delete System Logs Using Clear-EventLog
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1070.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

#Atomic Test #3 - Clear Event Logs via VBA
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1070.001 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1070.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime




#------------------------------------------------------------
# Defense Evasion - Indicator Removal on Host(T1070) T1070.004 File Deletion
write-host "T1070.004 Process Start, Press Any Key to Continue";read-host
# Atomic Test #4 - Delete a single file - Windows cmd 
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1070.004 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1070.004 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #5 - Delete an entire folder - Windows cmd
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1070.004 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1070.004 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #6 - Delete a single file - Windows PowerShell
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1070.004 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1070.004 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #7 - Delete an entire folder - Windows PowerShell
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1070.004 -testnumber 7 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1070.004 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #9 - Delete Prefetch File
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1070.004 -testnumber 9 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

# Atomic Test #10 - Delete TeamViewer Log Files
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1070.004 -testnumber 10 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1070.004 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Defense Evasion - Masquerading(T1036) T1036.004 - Masquerade Task or Service
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1036.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1036.004 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1036.004 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1036.004 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

#------------------------------------------------------------
# Defense Evasion - Masquerading(T1036) T1036.005 - Match Legitimate Name or Location
# 대체 테스트  T1574.008A - Path Interception by Search Order Hijacking

#------------------------------------------------------------
# Defense Evasion - Modify Registry T1112 - Modify Registry
write-host "T1112 Process Start, Press Any Key to Continue";read-host
#Atomic Test #1 - Modify Registry of Current User Profile - cmd
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#Atomic Test #2 - Modify Registry of Local Machine - cmd
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1112 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1112 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

#Atomic Test #3 - Modify registry to store logon credentials
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1112 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1112 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

#Atomic Test #4 - Add domain to Trusted sites Zone
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#Atomic Test #5 - Javascript in registry
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# T1112 - Atomic Test #6 - Change Powershell Execution Policy to Bypass
# invoke-atomictest T1112 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
# invoke-atomictest T1112 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

#------------------------------------------------------------
# Defense Evasion - Obfuscated Files or Information(T1027) T1027.002 - Software Packing
write-host "T1027.002 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1027.002A -testnumber 1 -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1027.002A -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime
#------------------------------------------------------------
# Defense Evasion - Obfuscated Files or Information(T1027) T1027.005 - Indicator Removal from Tools


#------------------------------------------------------------
# Defense Evasion - Process Injection(T1055) T1055.001 Dynamic-link Library Injection
# 공통, 중복

#------------------------------------------------------------
# Defense Evasion - Process Injection(T1055) T1055.002 Portable Executable Injection
# 공통, 중복

#------------------------------------------------------------
# Defense Evasion - Process Injection(T1055) T1055.012 Process Hollowing
# 공통, 중복

#------------------------------------------------------------
# Defense Evasion - Signed Binary Proxy Execution(T1218) T1218.011 - Rundll32
write-host "T1218.011 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1218.011 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #테스트 시 긴 시간 소요됨, rundll32.exe 프로세스가 종료되지 않음. 
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1218.011 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #테스트 시 긴 시간 소요됨
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1218.011 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1218.011 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1218.011 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1218.011 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1218.011 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1218.011 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # inf 설치시 에러가 발생되나, 테스트 가능
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1218.011 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1218.011 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #에러가 발생되나, 테스트 가능
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1218.011 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1218.011 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Defense Evasion - Subvert Trust Controls(T1553) T1553.002 Code Signing

#------------------------------------------------------------
# Defense Evasion - Subvert Trust Controls(T1553) T1553.006 Code Signing Policy Modification
# invoke-atomictest T1553.006A -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한 필요
#timeout /t $sleeptime
# invoke-atomictest T1553.006A -Cleanup -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한 필요
#timeout /t $sleeptime

#------------------------------------------------------------
# Defense Evasion - Use Alternate Authentication Material(T1550) T1550.002 - Pass the Hash
write-host "T1550.002 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1550.002 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1550.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1550.002 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1550.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Defense Evasion - Valid Accounts(T1078) T1078.001 Default Accounts
# 공통, 중복

#------------------------------------------------------------
# Defense Evasion - Valid Accounts(T1078) T1078.002 Domain Accounts
# 공통, 중복

#------------------------------------------------------------
# Defense Evasion - Valid Accounts(T1078) T1078.003 Local Accounts
# 공통, 중복


##############################################################
# Credential Access
##############################################################

#------------------------------------------------------------
# Credential Access - Brute Force(T1110) T1110.001 - Password Guessing
write-host "T1110.001 Process Start, Press Any Key to Continue";read-host
# Atomic Test #1 - Brute Force Credentials of all domain users via SMB
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1110.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #2 - Brute Force Credentials of single domain user via LDAP against domain controller (NTLM or Kerberos)
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1110.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime


#------------------------------------------------------------
# Credential Access - Brute Force(T1110) T1110.004 - Credential Stuffing

#------------------------------------------------------------
# Credential Access - Credentials from Password Stores(T1555)
write-host "T1555 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1555 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1555 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1555 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
# Test#2, #3 추가되야함.

#------------------------------------------------------------
# Credential Access - Credentials from Password Stores(T1555) T1555.003 - Credentials from Web Browsers
write-host "T1555.003 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1555.003 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1555.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 10 #프로그램 실행종료후 입력대기 문제로 120초 타임아웃 발생. -TimeoutSeconds 로 제한시간 수정.
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1555.003 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1555.003 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1555.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

#------------------------------------------------------------
# Credential Access - Credentials from Password Stores(T1555) T1555.004 - Windows Credential Manager

#------------------------------------------------------------
# Credential Access - Credentials from Password Stores(T1555) T1555.004 - Password Managers

#------------------------------------------------------------
# Credential Access - Input Capture(T1056) T1056.001 - Keylogging

#------------------------------------------------------------
# Credential Access - Man-in-the-Middle(T1557) T1557.001 - LLMNR/NBT-NS Poisoning and SMB Relay

#------------------------------------------------------------
# Credential Access - Network Sniffing(T1040)
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1040 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 240 #wireshark 설치 url변경됨, 다운로드 속도 오래걸림. 타임아웃 증가. #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1040 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1040 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1040 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 60 #프로그램 실행종료후 입력대기 문제로 120초 타임아웃 발생. 60초로 제한시간 수정
#timeout /t $sleeptime

#------------------------------------------------------------
# Credential Access - OS Credential Dumping(T1003)
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한 
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #테스트 후 로그아웃 해야지 파일이 생성됨.  loclk 안됨.  #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime

#------------------------------------------------------------
# Credential Access - OS Credential Dumping(T1003) T1003.001 - LSASS Memory
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
##$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #GUI 테스트 #관리자  권한
#vtimeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
##$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 7 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #python3 수동 설치 필요., pip업그레이드 필요. python -m pip install --upgrade pip, 설치가 제대로안되서 테스트 실패. #관리자  권한
#timeout /t $sleeptime
##$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 8 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 9 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 9 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 9 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 11 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #.net5 설치 필요 #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 12 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 12 -ExecutionLogPath $ExecutionLogPath #실행시 에러발생하나 실행은 완료됨. #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.001 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime

#------------------------------------------------------------
# Credential Access - OS Credential Dumping(T1003) T1003.002 - Security Account Manager
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
##$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.002 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #python3 필요. 수동설치 #관리자  권한
#timeout /t $sleeptime
##$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.002 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.002 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime

#------------------------------------------------------------
# Credential Access - OS Credential Dumping(T1003) T1003.003A - NTDS
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.003 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.003 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.003 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.003 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.003 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.003 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.003 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
#timeout /t $sleeptime

#------------------------------------------------------------
# Credential Access - OS Credential Dumping(T1003) T1003.004- LSA Secrets
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.004 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1003.004 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath  #관리자  권한
#timeout /t $sleeptime

#------------------------------------------------------------
# Credential Access - Steal or Forge Kerberos Tickets(T1558) T1558.003 - Kerberoasting
# invoke-atomictest T1558.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 실행은 되나 결과가 안나옴
#timeout /t $sleeptime

#------------------------------------------------------------
# Credential Access - Unsecured Credentials(T1552) T1552.001 - Credentials In Files
write-host "T1552.001 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1552.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1552.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath  #관리자  권한
#timeout /t $sleeptime

#------------------------------------------------------------
# Credential Access - Unsecured Credentials(T1552) T1552.002 - Credentials in Registry
write-host "T1552.002 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1552.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1552.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
#------------------------------------------------------------
# Credential Access - Unsecured Credentials(T1552) T1552.004 - Private Keys
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1552.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime


##############################################################
# Discovery 
##############################################################
#------------------------------------------------------------
# Discovery - Account Discovery(T1087) T1087.001 - Local Account
write-host "T1087.001 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1087.001 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1087.001 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1087.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1087.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Discovery - Account Discovery(T1087) T1087.002 - Domain Account
write-host "T1087.002 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1087.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1087.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #dc에서 해야함, 테스트 수정
#timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1087.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1087.002 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1087.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1087.002 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1087.002 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1087.002 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1087.002 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1087.002 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1087.002 -testnumber 7 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1087.002 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1087.002 -testnumber 8 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1087.002 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1087.002 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1087.002 -testnumber 10 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #모듈이 DC에 만 있음, dc에서 해야함, 리모트 로 수정
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1087.002 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
#timeout /t $sleeptime

# Atomic Test #10 - Enumerate Active Directory for Unconstrained Delegation
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1087.002A -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 모듈이 DC에 만 있음, dc에서 해야함, 리모트 로 수정 #에러.
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1087.002A -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#timeout /t $sleeptime



#------------------------------------------------------------
# Discovery - Account Discovery(T1087) T1087.003


#------------------------------------------------------------
# Discovery - Domain Trust Discovery(T1482) T1482 - Domain Trust Discovery
write-host "T1482 Process Start, Press Any Key to Continue";read-host
#Atomic Test #1 - Windows - Discover domain trusts with dsquery
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1482A -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 모듈이 DC에 만 있음, dc에서 해야함, 리모트 로 수정
timeout /t $sleeptime

#Atomic Test #2 - Windows - Discover domain trusts with nltest
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1482 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1482 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#Atomic Test #3 - Powershell enumerate domains and forests #테스트 대체
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1482A -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath 모듈이 DC에 만 있음, dc에서 해야함, 리모트 로 수정
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1482A -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#Atomic Test #4 - Adfind - Enumerate Active Directory OUs
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1482 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1482 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#Atomic Test #5 - Adfind - Enumerate Active Directory Trusts
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1482 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1482 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Discovery - File and Directory Discovery(T1083) T1083 - File and Directory Discovery
write-host "T1083 Process Start, Press Any Key to Continue";read-host
#Atomic Test #1 - File and Directory Discovery (cmd.exe)
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1083 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#Atomic Test #2 - File and Directory Discovery (PowerShell)
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1083 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Discovery - Network Service Scanning(T1046) T1046 - Network Service Scanning
write-host "T1046 Process Start, Press Any Key to Continue";read-host
#Atomic Test #3 - Port Scan NMap for Windows
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1046 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#Atomic Test #4 - Port Scan using python
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1046 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Discovery - Network Share Discovery(1135) T1135 - Network Share Discovery
write-host "T1135 Process Start, Press Any Key to Continue";read-host
#Atomic Test #3 - Network Share Discovery command prompt
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1135 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#Atomic Test #4 - Network Share Discovery PowerShell
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1135 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#Atomic Test #5 - View available share drives
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1135 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#Atomic Test #6 - Share Discovery with PowerView
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1135 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Discovery - Network Sniffing(T1040)
# 공통, 중복

#------------------------------------------------------------
# Discovery - Password Policy Discovery(T1201) T1201 - Password Policy Discovery
write-host "T1201 Process Start, Press Any Key to Continue";read-host
#Atomic Test #5 - Examine local password policy - Windows
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1201 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#Atomic Test #6 - Examine domain password policy - Windows
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1201 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Discovery - Peripheral Device Discovery(T1120) T1120 - Peripheral Device Discovery
write-host "T1120 Process Start, Press Any Key to Continue";read-host
#Atomic Test #1 - Win32_PnPEntity Hardware Inventory
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1120 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1120 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Discovery - Permission Groups Discovery(T1069) T1069.001 - Local Groups
write-host "T1069.001 Process Start, Press Any Key to Continue";read-host
#Atomic Test #2 - Basic Permission Groups Discovery Windows (Local)
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1069.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#Atomic Test #3 - Permission Groups Discovery PowerShell (Local)
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1069.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime


#------------------------------------------------------------
# Discovery - Permission Groups Discovery(T1069) T1069.002 - Domain Groups
write-host "T1069.002 Process Start, Press Any Key to Continue";read-host
#Atomic Test #1 - Basic Permission Groups Discovery Windows (Domain)
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1069.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#Atomic Test #2 - Permission Groups Discovery PowerShell (Domain)
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1069.002A -testnumber 1 -ExecutionLogPath $ExecutionLogPath #모듈이 DC에 만 있음, dc에서 해야함, 리모트 로 수정
timeout /t $sleeptime

#Atomic Test #3 - Elevated group enumeration using net group (Domain)
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1069.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime

#Atomic Test #4 - Find machines where user has local admin access (PowerView)
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1069.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #타임아웃 발생하나 정상
timeout /t $sleeptime

#Atomic Test #5 - Find local admins on all machines in domain (PowerView)
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1069.002 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#Atomic Test #6 - Find Local Admins via Group Policy (PowerView)
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1069.002 -testnumber 6 -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime

#Atomic Test #7 - Enumerate Users Not Requiring Pre Auth (ASRepRoast)
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1069.002A -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #모듈이 DC에 만 있음, dc에서 해야함, 리모트 로 수정
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1069.002A -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#Atomic Test #8 - Adfind - Query Active Directory Groups
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1069.002 -testnumber 8 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1069.002 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Discovery - Process Discovery(T1057) T1057 - Process Discovery
write-host "T1057 Process Start, Press Any Key to Continue";read-host
# Atomic Test #2 - Process Discovery - tasklist
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1057 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1057A -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1057A -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1057A -testnumber 3 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime


#------------------------------------------------------------
# Discovery - Query Registry(T1012) T1012 - Query Registry
write-host "T1012 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1012 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Discovery - Remote System Discovery(T1018) T1018 - Remote System Discovery
write-host "T1018 Process Start, Press Any Key to Continue";read-host
# Atomic Test #1 - Remote System Discovery - net
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1018 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #2 - Remote System Discovery - net group Domain Computers
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1018 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1018 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#timeout /t $sleeptime

# Atomic Test #3 - Remote System Discovery - nltest
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1018 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #4 - Remote System Discovery - ping sweep
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1018 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #5 - Remote System Discovery - arp
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1018 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #8 - Remote System Discovery - nslookup
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1018 -testnumber 8 -ExecutionLogPath $ExecutionLogPath #관리자
#timeout /t $sleeptime

# Atomic Test #9 - Remote System Discovery - adidnsdump
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1018 -testnumber 9 -ExecutionLogPath $ExecutionLogPath #관리자
#timeout /t $sleeptime

# Atomic Test #10 - Adfind - Enumerate Active Directory Computer Objects
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1018 -testnumber 10 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1018 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #11 - Adfind - Enumerate Active Directory Domain Controller Objects
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1018 -testnumber 11 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1018 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Discovery - Software Discovery(T1518) T1518 - Software Discovery
write-host "T1518 Process Start, Press Any Key to Continue";read-host
Atomic Test #1 - Find and Display Internet Explorer Browser Version
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1518 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

Atomic Test #2 - Applications Installed
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1518 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Discovery - Software Discovery(T1518) T1518.001 - Security Software Discovery
write-host "T1518.001 Process Start, Press Any Key to Continue";read-host
# Atomic Test #1 - Security Software Discovery
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1518.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #2 - Security Software Discovery - powershell
# invoke-atomictest T1518.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #해당되는 프로세스 없음.
#timeout /t $sleeptime

# Atomic Test #5 - Security Software Discovery - Sysmon Service
# invoke-atomictest T1518.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #해당되는 프로세스 없음.
#timeout /t $sleeptime

# Atomic Test #6 - Security Software Discovery - AV Discovery via WMI
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1518.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Discovery - System Information Discovery(T1082) T1082 - System Information Discovery
write-host "T1082 Process Start, Press Any Key to Continue";read-host
# Atomic Test #1 - System Information Discoveryes
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1082 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #6 - Hostname Discovery (Windows)
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1082 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #8 - Windows MachineGUID Discovery
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1082 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #9 - Griffon Recon
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1082 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #10 - Environment variables discovery on windows
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1082 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Discovery - System Network Configuration Discovery(T1016) T1016 - System Network Configuration Discovery
write-host "T1016 Process Start, Press Any Key to Continue";read-host

# Atomic Test #1 - System Network Configuration Discovery on Windows
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1016 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #2 - List Windows Firewall Rules
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1016 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #4 - System Network Configuration Discovery (TrickBot Style)
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1016 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #5 - List Open Egress Ports
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1016 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1016 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1016 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #6 - Adfind - Enumerate Active Directory Subnet Objects
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1016 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1016 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #7 - Qakbot Recon

#------------------------------------------------------------
# Discovery - System Network Connections Discovery(T1049) T1049 - System Network Connections Discovery
write-host "T1049 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1049 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1049 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1049 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath  #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1049 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

#------------------------------------------------------------
# Discovery - System Owner/User Discovery (T1033) T1033 - System Owner/User Discovery
write-host "T1033 - Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1033 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Discovery - System Service Discovery(T1007) T1007 - System Service Discovery
write-host "T1007 Process Start, Press Any Key to Continue";read-host
Atomic Test #1 - System Service Discovery
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1007 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

Atomic Test #2 - System Service Discovery - net.exe
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1007 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1007 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime


##############################################################
# Lateral Movement
##############################################################

#------------------------------------------------------------
# Lateral Movement - Internal Spearphishing(T1534)

#------------------------------------------------------------
# Lateral Movement - Lateral Tool Transfer(T1570)


#------------------------------------------------------------
# Lateral Movement - Remote Services(T1021) - T1021.001 - Remote Desktop Protocol
write-host "T1021.001 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1021.001 -testnumber 1 -CheckPrereqs -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1021.001 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1021.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #파라미터(패스워드) 변경
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1021.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1021.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #파라미터(패스워드, server) 변경
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1021.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Lateral Movement - Remote Services(T1021) - T1021.002 - SMB/Windows Admin Shares
write-host "T1021.002 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1021.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #파라미터 (domain, passwd, computername) 변경
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1021.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #파라미터 (hostname )변경
timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1021.002A -testnumber 1 -ExecutionLogPath $ExecutionLogPath #수동 테스트
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1021.002 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1021.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #timeout #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1021.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime


# Lateral Movement - Remote Services(T1021) - T1021.002 - SSH
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1021.004A -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime


#------------------------------------------------------------
# Lateral Movement - Remote Services(T1021)
# 추가 연구 필요 

#------------------------------------------------------------
# Lateral Movement - Remote Services(T1021) - T1021.006 - Windows Remote Management
write-host "T1021.006 Process Start, Press Any Key to Continue";read-host
# Atomic Test #1 - Enable Windows Remote Management
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1021.006 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

# Atomic Test #2 - Invoke-Command
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1021.006 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #서버 honstname 추가
timeout /t $sleeptime

# Atomic Test #3 - WinRM Access with Evil-WinRM
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1021.006 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한 #get_prereq_command 실행 안됨
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1021.006 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

##############################################################
# Collection
##############################################################
#------------------------------------------------------------
# Collection - Archive Collected Data - T1560 - Archive Collected Data
write-host "T1560.001 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1560.001 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1560.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1560.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1560.001 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1560.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1560.001 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1560.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1560.001 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1560.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime

#------------------------------------------------------------
# Collection - Data from Local System(T1005)

#------------------------------------------------------------
# Collection - Data Staged(T1074) - T1074.001 - Local Data Staging
write-host "T1074.001 Process Start, Press Any Key to Continue";read-host
# Atomic Test #1 - Stage data from Discovery.bat
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1074.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1074.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #3 - Zip a Folder with PowerShell for Staging in Temp
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1074.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1074.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Collection - Email Collection(T1114) - T1114.001 - Local Email Collection
write-host "T1114.001 Process Start, Press Any Key to Continue";read-host
# Atomic Test #1 - Email Collection with PowerShell Get-Inbox
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1114.001 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1114.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1114.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
# Collection - Input Capture(T1056)
# 공통, 중복

#------------------------------------------------------------
# Collection - Man in the Browser(T1185)

#------------------------------------------------------------
# Collection - Man-in-the-Middle(T1557) T1557.001
# 공통, 중복

#------------------------------------------------------------
# Collection - Screen Capture - T1113 - Screen Capture
write-host "T1113 Process Start, Press Any Key to Continue";read-host
# Atomic Test #5 - Windows Screencapture
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1113 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #사용자 행위 필요
timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1113 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath #manual
#timeout /t $sleeptime


##############################################################
# Command and Control
##############################################################

#------------------------------------------------------------
#Command and Control - Application Layer Protocol(T1071) - T1071.001 - Web Protocols
write-host "T1071.001 Process Start, Press Any Key to Continue";read-host
# Atomic Test #1 - Malicious User Agents - Powershell
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1071.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #출력 없음
timeout /t $sleeptime

# Atomic Test #2 - Malicious User Agents - CMD
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1071.001 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1071.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #출력 없음
timeout /t $sleeptime

#------------------------------------------------------------
#Command and Control - Data Encoding(T1132)
# 다른 테스트에 포함 

#------------------------------------------------------------
#Command and Control -Encrypted Channel(T1573) T1573.001 - Encrypted Channel
write-host "T1573 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1573 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #T1573.001 → T1573으로 수정 #서버 주소 google로 변경 
timeout /t $sleeptime

#------------------------------------------------------------
#Command and Control -Encrypted Channel(T1573) T1573.002 - Asymmetric Cryptography 

#------------------------------------------------------------
#Command and Control - Fallback Channels(T1008)

#------------------------------------------------------------
#Command and Control - Ingress Tool Transfer - T1105 - Ingress Tool Transfer
write-host "T1105 Process Start, Press Any Key to Continue";read-host
# Atomic Test #7 - certutil download (urlcache)
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1105 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #https://raw.githubusercontent.com/crav3r/atomic-red-team/round4test/LICENSE.txt 변경
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1105 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #8 - certutil download (verifyctl)
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1105 -testnumber 8 -ExecutionLogPath $ExecutionLogPath #https://raw.githubusercontent.com/crav3r/atomic-red-team/round4test/LICENSE.txt 변경 #오류가 발생하지만 파일 다운로드 됨
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1105 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime

# Atomic Test #9 - Windows - BITSAdmin BITS Download
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1105 -testnumber 9 -ExecutionLogPath $ExecutionLogPath #https://raw.githubusercontent.com/crav3r/atomic-red-team/round4test/LICENSE.txt 변경
timeout /t $sleeptime

# Atomic Test #10 - Windows - PowerShell Download
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1105 -testnumber 10 -ExecutionLogPath $ExecutionLogPath #https://raw.githubusercontent.com/crav3r/atomic-red-team/round4test/LICENSE.txt 변경 
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1105 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime

# Atomic Test #11 - OSTAP Worming Activity
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1105 -testnumber 11 -ExecutionLogPath $ExecutionLogPath #echo 뒤에 ' 추가  #관리자 권한
#timeout /t $sleeptime

# Atomic Test #12 - svchost writing a file to a UNC path
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1105 -testnumber 12 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1105 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath #관
#timeout /t $sleeptime

# Atomic Test #13 - Download a File with Windows Defender MpCmdRun.exe
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1105 -testnumber 13 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #Windows defender 버전 상이 (제외)
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1105 -testnumber 13 -ExecutionLogPath $ExecutionLogPath #Windows defender 버전 상이 (제외) #https://raw.githubusercontent.com/crav3r/atomic-red-team/round4test/LICENSE.txt 변경
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1105 -testnumber 13 -Cleanup -ExecutionLogPath $ExecutionLogPath #Windows defender 버전 상이 (제외)
#timeout /t $sleeptime

#------------------------------------------------------------
#Command and Control - Non-Standard Port - T1571 - Non-Standard Port
write-host "T1571 Process Start, Press Any Key to Continue";read-host
# Atomic Test #1 - Testing usage of uncommonly used port with PowerShell
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1571 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

#------------------------------------------------------------
#Command and Control - Protocol Tunneling(T1572)


#------------------------------------------------------------
#Command and Control - Proxy(T1090)
write-host "T1090.001 Process Start, Press Any Key to Continue";read-host
#T1090.001 - Internal Proxy - Atomic Test #3 - portproxy reg key
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1090.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1090.001 -testnumber 3 -cleanup -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime


#------------------------------------------------------------
#Command and Control - Remote Access Software - T1219 - Remote Access Software
# Atomic Test #1 - TeamViewer Files Detected Test on Windows
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1219 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Teamviewer.exe 실행 전 start-sleep 10 추가 #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1219 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

# Atomic Test #2 - AnyDesk Files Detected Test on Windows
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1219 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1219 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

# Atomic Test #3 - LogMeIn Files Detected Test on Windows
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1219 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Start-Process $file1 /quiet 변경 #Start-Sleep 10 추가 #C:\Program Files (x86)\LogMeIn Ignition 변경 #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1219 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime


#------------------------------------------------------------
#Command and Control - Web Service(T1102) T1102.002 Bidirectional Communication


##############################################################
# Exfiltration
##############################################################

#------------------------------------------------------------
#Exfiltration - Exfiltration Over Alternative Protocol - T1048.003 - Exfiltration Over Unencrypted/Obfuscated Non-C2 Protocol
write-host "T1048.003 Process Start, Press Any Key to Continue";read-host
# Atomic Test #2 - Exfiltration Over Alternative Protocol - ICMP
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1048.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

# Atomic Test #4 - Exfiltration Over Alternative Protocol - HTTP
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1048.003 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # ip_address DC 주소로 변경
#timeout /t $sleeptime

# Atomic Test #5 - Exfiltration Over Alternative Protocol - SMTP
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1048.003 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #SMTP 서버, 계정 필요
#timeout /t $sleeptime

#------------------------------------------------------------
#Exfiltration - Exfiltration Over C2 Channel(T1041)


##############################################################
# Impact
##############################################################

#------------------------------------------------------------
#Impact - Data Destruction(T1485) T1485 - Data Destruction
write-host "T1485 Process Start, Press Any Key to Continue";read-host
# Atomic Test #1 - Windows - Overwrite file with Sysinternals SDelete
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1485 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1485 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime


#------------------------------------------------------------
#Impact - Data Encrypted for Impact(T1486)

#------------------------------------------------------------
#Impact - Disk Wipe(T1561) T1561.002 Disk Structure Wipe

#------------------------------------------------------------
#Impact - Endpoint Denial of Service(T1499

#------------------------------------------------------------
#Impact - Inhibit System Recovery(T1490) T1490 - Inhibit System Recovery

# Atomic Test #1 - Windows - Delete Volume Shadow Copies
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1490 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #DC에서 실행 #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1490 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #DC에서 실행 #관리자 권한
#timeout /t $sleeptime

# Atomic Test #2 - Windows - Delete Volume Shadow Copies via WMI
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1490 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #DC에서 실행 (추가) #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1490 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #실행 전에 SHADOW COPY 생성 필요함. #DC에서 
#timeout /t $sleeptime

# Atomic Test #3 - Windows - wbadmin Delete Windows Backup Catalog
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1490 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

# Atomic Test #4 - Windows - Disable Windows Recovery Console Repair
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1490 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1490 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

# Atomic Test #5 - Windows - Delete Volume Shadow Copies via WMI with PowerShell
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1490 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #DC에서 실행 (추가) #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1490 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #실행 전에 SHADOW COPY 생성 필요함. #DC에서 실행 #관리자 권한
#timeout /t $sleeptime

# Atomic Test #6 - Windows - Delete Backup Files
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1490 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

# Atomic Test #7 - Windows - wbadmin Delete systemstatebackup
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1490 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #제외. 해당 Windows 버전에서 미지원
#timeout /t $sleeptime


#------------------------------------------------------------
#Impact - Service Stop(T1489) T1489 - Service Stop

# Atomic Test #1 - Windows - Stop service using Service Controller
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1489 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1489 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

# Atomic Test #2 - Windows - Stop service using net.exe
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1489 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1489 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

# Atomic Test #3 - Windows - Stop service by killing process
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1489 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#timeout /t $sleeptime

#------------------------------------------------------------
#Impact - System Shutdown/Reboot(T1529) T1529 - System Shutdown/Reboot

# Atomic Test #1 - Shutdown System - Windows
# invoke-atomictest T1529 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#timeout /t $sleeptime

# Atomic Test #2 - Restart System - Windows
# invoke-atomictest T1529 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 원한
#timeout /t $sleeptime
