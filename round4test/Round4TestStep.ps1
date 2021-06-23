
$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="c:\round4test\atomics"}
$ExecutionLogPath = "C:\round4test\atomictest.log"
Import-Module "C:\round4test\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force

##############################################################
# Execution
##############################################################

# Execution - Command and Scripting Interpreter(T1059) - Powershell
invoke-atomictest t1059.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
 

invoke-atomictest t1059.001 -testnumber 2 -getprereq -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath   # AD에서 테스트해야 함.
invoke-atomictest t1059.001 -testnumber 2 -cleanup -ExecutionLogPath $ExecutionLogPath
 
invoke-atomictest t1059.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.001 -testnumber 3 -cleanup -ExecutionLogPath $ExecutionLogPath
 
invoke-atomictest t1059.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
 
invoke-atomictest t1059.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
 
 invoke-atomictest t1059.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath   # IP/PW 요구
 
invoke-atomictest t1059.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
 
invoke-atomictest t1059.001 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
 
invoke-atomictest t1059.001 -testnumber 9 -ExecutionLogPath $ExecutionLogPath   # Enter 입력 필요
 
invoke-atomictest t1059.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.001 -testnumber 11 -cleanup -ExecutionLogPath $ExecutionLogPath
 
invoke-atomictest t1059.001 -testnumber 13 -getprereq -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.001 -testnumber 13 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.001 -testnumber 13 -cleanup -ExecutionLogPath $ExecutionLogPath
 
invoke-atomictest t1059.001 -testnumber 14 -ExecutionLogPath $ExecutionLogPath
 
invoke-atomictest t1059.001 -testnumber 15 -getprereq -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.001 -testnumber 15 -ExecutionLogPath $ExecutionLogPath
 
invoke-atomictest t1059.001 -testnumber 16 -getprereq -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.001 -testnumber 16 -ExecutionLogPath $ExecutionLogPath
 
invoke-atomictest t1059.001 -testnumber 17 -getprereq -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.001 -testnumber 17 -ExecutionLogPath $ExecutionLogPath
 
invoke-atomictest t1059.001 -testnumber 18 -getprereq -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.001 -testnumber 18 -ExecutionLogPath $ExecutionLogPath
 
invoke-atomictest t1059.001A -testnumber 1 -ExecutionLogPath $ExecutionLogPath

invoke-atomictest t1059.001A -testnumber 2 -ExecutionLogPath $ExecutionLogPath
 
# Execution - Command and Scripting Interpreter(T1059) - Windows Command Shell
 
invoke-atomictest t1059.003 -testnumber 1 -getprereq -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.003 -testnumber 1 -cleanup -ExecutionLogPath $ExecutionLogPath
 
invoke-atomictest t1059.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.003 -testnumber 2 -cleanup -ExecutionLogPath $ExecutionLogPath
 
# Execution - Command and Scripting Interpreter(T1059) - Visual Basic
invoke-atomictest t1059.005 -testnumber 1 -getprereq -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.005 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.005 -testnumber 1 -cleanup -ExecutionLogPath $ExecutionLogPath
 
invoke-atomictest t1059.005 -testnumber 2 -getprereq -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.005 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.005 -testnumber 2 -cleanup -ExecutionLogPath $ExecutionLogPath
 
invoke-atomictest t1059.005 -testnumber 3 -getprereq -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.005 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.005 -testnumber 3 -cleanup -ExecutionLogPath $ExecutionLogPath
 
# Execution - Command and Scripting Interpreter(T1059) - Python
## 테스트방법 연구 필요
invoke-atomictest t1059.006 -testnumber 1 -getprereq -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.006 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.006 -testnumber 1 -cleanup -ExecutionLogPath $ExecutionLogPath
 
# Execution - Command and Scripting Interpreter(T1059) - JavaScript
invoke-atomictest t1059.007A -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.007A -testnumber 1 -cleanup -ExecutionLogPath $ExecutionLogPath

invoke-atomictest t1059.007A -testnumber 2 -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# Execution - Native API (T1106 )- Execution through API - CreateProcess
invoke-atomictest T1106 -testnumber 1   -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# Execution - Scheduled Task/Job(T1053)  

## Scheduled Task Startup Script
#invoke-atomictest T1053.005 -testnumber 1 -ExecutionLogPath $ExecutionLogPath     #관리자 권한 
#invoke-atomictest T1053.005 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath     #관리자 권한 

## Scheduled task Local
invoke-atomictest T1053.005 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1053.005 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

## Powershell Cmdlet Scheduled Task  #관리자 권한 
#invoke-atomictest T1053.005 -testnumber 4 -ExecutionLogPath $ExecutionLogPath      #관리자 권한 
#invoke-atomictest T1053.005 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath     #관리자 권한 

##Task Scheduler via VBA
invoke-atomictest T1053.005 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1053.005 -testnumber 5 -ExecutionLogPath $ExecutionLogPath

##WMI Invoke-CimMethod Scheduled Task
#invoke-atomictest T1053.005 -testnumber 6 -ExecutionLogPath $ExecutionLogPath     #관리자 권한 
#invoke-atomictest T1053.005 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath     #관리자 권한 

## Scheduled task Remote
invoke-atomictest T1053.005A -testnumber 1 -ExecutionLogPath $ExecutionLogPath   #T1053.003
invoke-atomictest T1053.005A -testnumber 1-Cleanup -ExecutionLogPath $ExecutionLogPath   #T1053.003

#------------------------------------------------------------
# Execution - System Services(T1569)	Service Execution
#invoke-atomictest T1569.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1569.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한

invoke-atomictest T1569.002 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1569.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #계정 권한 필요 

## 대체함 
# invoke-atomictest T1543.003 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한 
# invoke-atomictest T1543.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
# invoke-atomictest T1543.003 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자권한

#------------------------------------------------------------
# Execution - User Execution (T1204)
invoke-atomictest T1204.002 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

invoke-atomictest T1204.002A -testnumber 1 -ExecutionLogPath $ExecutionLogPath #T1204.002. 2
invoke-atomictest T1204.002A -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #T1204.002. 2

invoke-atomictest T1204.002 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath

invoke-atomictest T1204.002 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath

invoke-atomictest T1204.002 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 5 -ExecutionLogPath $ExecutionLogPath

invoke-atomictest T1204.002 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath

invoke-atomictest T1204.002 -testnumber 7 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 7 -ExecutionLogPath $ExecutionLogPath

invoke-atomictest T1204.002 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# Execution - Windows Management Instrumentation (T1047)

# Atomic Test #1 - WMI Reconnaissance Users
invoke-atomictest T1047 -testnumber 1 -ExecutionLogPath $ExecutionLogPath

# Atomic Test #2 - WMI Reconnaissance Processes
invoke-atomictest T1047 -testnumber 2 -ExecutionLogPath $ExecutionLogPath

# Atomic Test #3 - WMI Reconnaissance Software
invoke-atomictest T1047 -testnumber 3 -ExecutionLogPath $ExecutionLogPath

#Atomic Test #4 - WMI Reconnaissance List Remote Services
invoke-atomictest T1047 -testnumber 4 -ExecutionLogPath $ExecutionLogPath

#Atomic Test #5 - WMI Execute Local Process
invoke-atomictest T1047 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1047 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath

#Atomic Test #6 - WMI Execute Remote Process
invoke-atomictest T1047 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #계정정보입력 필요
invoke-atomictest T1047 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath

#Atomic Test #7 - Create a Process using WMI Query and an Encoded Command
invoke-atomictest T1047 -testnumber 7 -ExecutionLogPath $ExecutionLogPath

#Atomic Test #8 - Create a Process using obfuscated Win32_Process
#invoke-atomictest T1047 -testnumber 8 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#invoke-atomictest T1047 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한


##############################################################
# Persistence
##############################################################

#------------------------------------------------------------
# Persistence - BITS Jobs (T1197)
invoke-atomictest T1197 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1197 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

invoke-atomictest T1197 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1197 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

invoke-atomictest T1197 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1197 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath

invoke-atomictest T1197 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1197 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# Persistence - Boot or Logon Autostart Execution(T1547)

invoke-atomictest T1547.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1547.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1547.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1547.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1547.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1547.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1547.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1547.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1547.001 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1547.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1547.001 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1547.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1547.001 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한

invoke-atomictest T1547.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.004 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.004 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.004 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.004 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.004 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath

#invoke-atomictest T1547.005 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한

invoke-atomictest T1547.009 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.009 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.009 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.009 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# Persistence - Create Account(T1136) : T1136.001 - Local Account
#invoke-atomictest T1136.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#invoke-atomictest T1136.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한

#invoke-atomictest T1136.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#invoke-atomictest T1136.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한

#invoke-atomictest T1136.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#invoke-atomictest T1136.001 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한

# Persistence - Create Account(T1136) : T1136.002 - Domain Account
# 여기부터 다시 테스트 ( 2021.06.22 이명수)
invoke-atomictest T1136.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1136.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한 

invoke-atomictest T1136.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1136.002 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

invoke-atomictest T1136.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1136.002 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# Persistence - Create or Modify System Process(T1543)

#invoke-atomictest T1543.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1543.003 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1543.003 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1543.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1543.003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1543.003 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1543.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1543.003 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한


#------------------------------------------------------------
# Persistence - Hijack Execution Flow(T1574)
#invoke-atomictest T1574.010A -testnumber 1  -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1574.010A -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1574.010A -testnumber 1 -cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한

#invoke-atomictest T1574.009 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1574.009 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한

#invoke-atomictest T1574.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1574.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한

#------------------------------------------------------------
#Persistence - Server Software Component(T1505)
# Persistence - Server Software Component(T1505)
invoke-atomictest T1505.003 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1505.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath  
invoke-atomictest T1505.003 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath


##############################################################
# Privilege Escalation
##############################################################

#------------------------------------------------------------
# Privilege Escalation - Abuse Elevation Control Mechanism(T1548) - T1548.001 - Setuid and Setgid
# 리처치 필요

#------------------------------------------------------------
# Privilege Escalation - Abuse Elevation Control Mechanism(T1548) - T1548.002 - Bypass User Account Control
##invoke-atomictest T1548.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #반응 없음
##invoke-atomictest T1548.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
##invoke-atomictest T1548.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #권한 상승 안됨.
##invoke-atomictest T1548.002 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1548.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1548.002 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1548.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1548.002 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1548.002 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1548.002 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1548.002 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1548.002 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1548.002 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1548.002 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1548.002 -testnumber 8 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1548.002 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
##invoke-atomictest T1548.002 -testnumber 9 -ExecutionLogPath $ExecutionLogPath #실행은 성공되나 파워쉘이 종료됨

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

#------------------------------------------------------------
# Privilege Escalation - Process Injection(T1055) T1055.002 Portable Executable Injection

#------------------------------------------------------------
# Privilege Escalation - Process Injection(T1055) T1055.012 Process Hollowing

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
invoke-atomictest T1140 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1140 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1140 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1140 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# Defense Evasion - Domain Policy Modification(T1484) T1484.001 Group Policy Modification
# 공통 중복

#------------------------------------------------------------
# Defense Evasion - File and Directory Permissions Modification(T1222) T1222.001 Windows File and Directory Permissions Modification
invoke-atomictest T1222.001 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.001 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.001 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.001 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1222.001 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1222.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1222.001 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한

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
# Defense Evasion - Impair Defenses(T1562) T1562.001 Disable or Modify Tools
#invoke-atomictest T1562.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1562.001 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1562.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1562.001 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1562.001 -testnumber 12 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1562.001 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
##invoke-atomictest T1562.001 -testnumber 13 -ExecutionLogPath $ExecutionLogPath #관리자  권한 #McAfeeDLPAgentService 서비스가 설치되어야함. getprereqs를 작성해야할것으로 보임.
##invoke-atomictest T1562.001 -testnumber 13 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한 #McAfeeDLPAgentService 서비스가 설치되어야함. getprereqs를 작성해야할것으로 보임.
#invoke-atomictest T1562.001 -testnumber 14 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1562.001 -testnumber 14 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
##invoke-atomictest T1562.001 -testnumber 15 -ExecutionLogPath $ExecutionLogPath #관리자  권한 #windows defender atp. 설치 필요
##invoke-atomictest T1562.001 -testnumber 15 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한 #windows defender atp. 설치 필요
##invoke-atomictest T1562.001 -testnumber 16 -ExecutionLogPath $ExecutionLogPath #관리자  권한 #Windwos Defender disable, access denied
##invoke-atomictest T1562.001 -testnumber 16 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한 #Windwos Defender disable, access denied
#invoke-atomictest T1562.001 -testnumber 17 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1562.001 -testnumber 17 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1562.001 -testnumber 18 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1562.001 -testnumber 18 -Cleanup -ExecutionLogPath $ExecutionLogPath
##invoke-atomictest T1562.001 -testnumber 19 -ExecutionLogPath $ExecutionLogPath #관리자  권한 #테스트 실패
##invoke-atomictest T1562.001 -testnumber 20 -ExecutionLogPath $ExecutionLogPath #관리자  권한 #McAfeeDLPAgentService 서비스 필요.
#invoke-atomictest T1562.001 -testnumber 21 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1562.001 -testnumber 22 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1562.001 -testnumber 22 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1562.001 -testnumber 23 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1562.001 -testnumber 23 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1562.001 -testnumber 24 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1562.001 -testnumber 24 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한

#------------------------------------------------------------
# Defense Evasion - Impair Defenses(T1562) T1562.002 Disable Windows Event Logging

#------------------------------------------------------------
# Defense Evasion - Indicator Removal on Host(T1070) T1070.001 Clear Windows Event Logs

#------------------------------------------------------------
# Defense Evasion - Indicator Removal on Host(T1070) T1070.004 File Deletion

#------------------------------------------------------------
# Defense Evasion - Masquerading(T1036) T1036.004 - Masquerade Task or Service

#------------------------------------------------------------
# Defense Evasion - Masquerading(T1036) T1036.005 - Match Legitimate Name or Location
# 대체 테스트  T1574.008A - Path Interception by Search Order Hijacking

#------------------------------------------------------------
# Defense Evasion - Modify Registry T1112 - Modify Registry

#------------------------------------------------------------
# Defense Evasion - Obfuscated Files or Information(T1027) T1027.002 - Software Packing

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

invoke-atomictest T1218.011 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #테스트 시 긴 시간 소요됨, rundll32.exe 프로세스가 종료되지 않음. 
invoke-atomictest T1218.011 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #테스트 시 긴 시간 소요됨

invoke-atomictest T1218.011 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 3 -ExecutionLogPath $ExecutionLogPath

invoke-atomictest T1218.011 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 4 -ExecutionLogPath $ExecutionLogPath

invoke-atomictest T1218.011 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # inf 설치시 에러가 발생되나, 테스트 가능

invoke-atomictest T1218.011 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #에러가 발생되나, 테스트 가능

invoke-atomictest T1218.011 -testnumber 7 -ExecutionLogPath $ExecutionLogPath

invoke-atomictest T1218.011 -testnumber 8 -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# Defense Evasion - Subvert Trust Controls(T1553) T1553.002 Code Signing

#------------------------------------------------------------
# Defense Evasion - Subvert Trust Controls(T1553) T1553.006 Code Signing Policy Modification
# invoke-atomictest T1553.006A -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한 필요
# invoke-atomictest T1553.006A -Cleanup -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한 필요


#------------------------------------------------------------
# Defense Evasion - Use Alternate Authentication Material(T1550) T1550.002 - Pass the Hash

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
invoke-atomictest T1110.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath

invoke-atomictest T1110.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath


#------------------------------------------------------------
# Credential Access - Brute Force(T1110) T1110.004 - Credential Stuffing

#------------------------------------------------------------
# Credential Access - Credentials from Password Stores(T1555)
invoke-atomictest T1555 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
# Test#2, #3 추가되야함.

#------------------------------------------------------------
# Credential Access - Credentials from Password Stores(T1555) T1555.003 - Credentials from Web Browsers
invoke-atomictest T1555.003 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 10 #프로그램 실행종료후 입력대기 문제로 120초 타임아웃 발생. -TimeoutSeconds 로 제한시간 수정.
invoke-atomictest T1555.003 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

invoke-atomictest T1555.003 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath

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
#invoke-atomictest T1040 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 240 #wireshark 설치 url변경됨, 다운로드 속도 오래걸림. 타임아웃 증가. #관리자  권한
#invoke-atomictest T1040 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1040 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1040 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 60 #프로그램 실행종료후 입력대기 문제로 120초 타임아웃 발생. 60초로 제한시간 수정

#------------------------------------------------------------
# Credential Access - OS Credential Dumping(T1003)
#invoke-atomictest T1003 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #테스트 후 로그아웃 해야지 파일이 생성됨.  loclk 안됨.  #관리자  권한
#invoke-atomictest T1003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한

#------------------------------------------------------------
# Credential Access - OS Credential Dumping(T1003) T1003.001 - LSASS Memory
#invoke-atomictest T1003.001 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.001 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
##invoke-atomictest T1003.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #GUI 테스트 #관리자  권한
#invoke-atomictest T1003.001 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자  권한
##invoke-atomictest T1003.001 -testnumber 7 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #python3 수동 설치 필요., pip업그레이드 필요. python -m pip install --upgrade pip, 설치가 제대로안되서 테스트 실패. #관리자  권한
##invoke-atomictest T1003.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.001 -testnumber 8 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.001 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.001 -testnumber 9 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.001 -testnumber 9 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.001 -testnumber 9 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.001 -testnumber 11 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #.net5 설치 필요 #관리자  권한
#invoke-atomictest T1003.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.001 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.001 -testnumber 12 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.001 -testnumber 12 -ExecutionLogPath $ExecutionLogPath #실행시 에러발생하나 실행은 완료됨. #관리자  권한
#invoke-atomictest T1003.001 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한

#------------------------------------------------------------
# Credential Access - OS Credential Dumping(T1003) T1003.002 - Security Account Manager
#invoke-atomictest T1003.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
##invoke-atomictest T1003.002 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #python3 필요. 수동설치 #관리자  권한
##invoke-atomictest T1003.002 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.002 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자  권한

# Credential Access - OS Credential Dumping(T1003) T1003.003 - NTDS

#------------------------------------------------------------
# Credential Access - OS Credential Dumping(T1003) T1003.004- LSA Secrets

#------------------------------------------------------------
# Credential Access - Steal or Forge Kerberos Tickets(T1558) T1558.003 - Kerberoasting

#------------------------------------------------------------
# Credential Access - Unsecured Credentials(T1552) T1552.001 - Credentials In Files

#------------------------------------------------------------
# Credential Access - Unsecured Credentials(T1552) T1552.002 - Credentials in Registry

#------------------------------------------------------------
# Credential Access - Unsecured Credentials(T1552) T1552.004 - Private Keys



##############################################################
# Discovery 
##############################################################


##############################################################
# Lateral Movement
##############################################################

##############################################################
# Collection
##############################################################


##############################################################
# Command and Control
##############################################################


##############################################################
# Exfiltration
##############################################################

#------------------------------------------------------------
#Exfiltration - Exfiltration Over Alternative Protocol - T1048.003 - Exfiltration Over Unencrypted/Obfuscated Non-C2 Protocol

invoke-atomictest T1048.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1048.003 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # ip_address DC 주소로 변경
#invoke-atomictest T1048.003 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #SMTP 서버, 계정 필요

##############################################################
# Impact
##############################################################

#------------------------------------------------------------
#Impact - Data Destruction(T1485) T1485 - Data Destruction

invoke-atomictest T1485 -testnumber 1 -CheckPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1485 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1485 -testnumber 1 -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
#Impact - Inhibit System Recovery(T1490) T1490 - Inhibit System Recovery
#관리자 권한 필요

#invoke-atomictest T1490 -testnumber 1 -CheckPrereqs -ExecutionLogPath $ExecutionLogPath #DC에서 실행 #관리자 권한
#invoke-atomictest T1490 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #DC에서 실행 #관리자 권한
#invoke-atomictest T1490 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #DC에서 실행 #관리자 권한
#invoke-atomictest T1490 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #DC에서 실행 (추가) #관리자 권한
#invoke-atomictest T1490 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #실행 전에 SHADOW COPY 생성 필요함. #DC에서 실행 #관리자 권한
#invoke-atomictest T1490 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#invoke-atomictest T1490 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#invoke-atomictest T1490 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#invoke-atomictest T1490 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #DC에서 실행 (추가) #관리자 권한
#invoke-atomictest T1490 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #실행 전에 SHADOW COPY 생성 필요함. #DC에서 실행 #관리자 권한
#invoke-atomictest T1490 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#invoke-atomictest T1490 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #제외. 해당 Windows 버전에서 미지원


#------------------------------------------------------------
#Impact - Service Stop(T1489) T1489 - Service Stop

invoke-atomictest T1489 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1489 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1489 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1489 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1489 -testnumber 3 -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
#Impact - System Shutdown/Reboot(T1529) T1529 - System Shutdown/Reboot
invoke-atomictest T1529 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1529 -testnumber 2 -ExecutionLogPath $ExecutionLogPath