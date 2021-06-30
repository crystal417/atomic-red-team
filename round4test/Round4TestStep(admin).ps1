# 이 스크립트는 Round4TestStep.ps1 실행 전에 관리자 권한으로 먼저 수행해야 함
 
$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="c:\round4test\atomics"}
$ExecutionLogPath = "C:\round4test\atomictest.log"
$isAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).isInRole([Security.Principal.WindowsBuiltinRole]::Administrator) # 관리자 권한 확인


Import-Module "C:\round4test\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force

# Prerequistes

invoke-atomictest t1059.001 -testnumber 14 -getprereq -ExecutionLogPath $ExecutionLogPath


##############################################################
# Execution
##############################################################

#------------------------------------------------------------
# Execution - Command and Scripting Interpreter(T1059) T1059.001 - PowerShell
invoke-atomictest t1059.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

invoke-atomictest t1059.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

invoke-atomictest t1059.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
invoke-atomictest t1059.001 -testnumber 11 -cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

invoke-atomictest t1059.001 -testnumber 14 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#------------------------------------------------------------

# Execution - Scheduled Task/Job(T1053)  
## Scheduled Task Startup Script
invoke-atomictest T1053.005 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1053.005 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

## Powershell Cmdlet Scheduled Task
invoke-atomictest T1053.005 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1053.005 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath

##WMI Invoke-CimMethod Scheduled Task
invoke-atomictest T1053.005 -testnumber 6 -ExecutionLogPath $ExecutionLogPath     #관리자 권한 
invoke-atomictest T1053.005 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath     #관리자 권한 

# Execution - System Services(T1569)	Service Execution
invoke-atomictest T1569.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1569.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한


invoke-atomictest T1543.003 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한 
invoke-atomictest T1543.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1543.003 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자권한

#Atomic Test #8 - Create a Process using obfuscated Win32_Process
invoke-atomictest T1047 -testnumber 8 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1047 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한


##############################################################
# Persistence
##############################################################


#Persistence - Boot or Logon Autostart Execution(T1547)
invoke-atomictest T1547.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1547.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1547.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1547.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1547.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1547.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1547.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1547.001 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1547.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1547.001 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1547.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1547.001 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한

#------------------------------------------------------------
# Persistence - Boot or Logon Autostart Execution(T1547) T1547.005 - Security Support Provider
invoke-atomictest T1547.005 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한

# T1136.001 - Local Account
invoke-atomictest T1136.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1136.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한

invoke-atomictest T1136.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1136.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한

invoke-atomictest T1136.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1136.001 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한

# Persistence - Create Account(T1136) : T1136.002 - Domain Account
invoke-atomictest T1136.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1136.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한 


#Persistence - Create or Modify System Process(T1543)

invoke-atomictest T1543.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1543.003 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1543.003 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1543.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1543.003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1543.003 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1543.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1543.003 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한

#------------------------------------------------------------
# Persistence - Hijack Execution Flow(T1574) T1574.009 - Path Interception by Unquoted Path
invoke-atomictest T1574.009 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1574.009 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한

#------------------------------------------------------------
# Persistence - Hijack Execution Flow(T1574) T1574.010A - Service File Permissions Weakness
invoke-atomictest T1574.010A -testnumber 1  -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1574.010A -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1574.010A -testnumber 1 -cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한




#------------------------------------------------------------
# Persistence - Valid Accounts(T1078) T1078.003A - Local Accounts
# 1078.001과 동일 
#invoke-atomictest T1078.003A -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#invoke-atomictest T1078.003A -testnumber 1 -Cleanup -ExecutionLogPath $Executio #관리자 권한


##############################################################
# Privilege Escalation
##############################################################

#Privilege Escalation - Abuse Elevation Control Mechanism(T1548)
invoke-atomictest T1548.002 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1548.002 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1548.002 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1548.002 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1548.002 -testnumber 8 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1548.002 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한


#------------------------------------------------------------
# Privilege Escalation - Process Injection(T1055) T1055.001 Dynamic-link Library Injection
invoke-atomictest T1055.001 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1055.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한


##############################################################
# Defense Evasion
##############################################################

#------------------------------------------------------------
# Defense Evasion - File and Directory Permissions Modification(T1222) T1222.001 Windows File and Directory Permissions Modification
invoke-atomictest T1222.001 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1222.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1222.001 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한

# Defense Evasion - Impair Defenses(T1562) T1562.001 Disable or Modify Tools
invoke-atomictest T1562.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1562.001 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1562.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1562.001 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1562.001 -testnumber 12 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1562.001 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#invoke-atomictest T1562.001 -testnumber 13 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #McAfeeDLPAgentService 서비스가 설치되어야함. getprereqs를 작성해야할것으로 보임.
#invoke-atomictest T1562.001 -testnumber 13 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한 #McAfeeDLPAgentService 서비스가 설치되어야함. getprereqs를 작성해야할것으로 보임.
invoke-atomictest T1562.001 -testnumber 14 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1562.001 -testnumber 14 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#invoke-atomictest T1562.001 -testnumber 15 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #windows defender atp. 설치 필요
#invoke-atomictest T1562.001 -testnumber 15 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한 #windows defender atp. 설치 필요
#invoke-atomictest T1562.001 -testnumber 16 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #Windwos Defender disable, access denied
#invoke-atomictest T1562.001 -testnumber 16 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한 #Windwos Defender disable, access denied
invoke-atomictest T1562.001 -testnumber 17 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1562.001 -testnumber 17 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
#invoke-atomictest T1562.001 -testnumber 19 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #테스트 실패
#invoke-atomictest T1562.001 -testnumber 20 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #McAfeeDLPAgentService 서비스 필요.
invoke-atomictest T1562.001 -testnumber 21 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1562.001 -testnumber 22 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1562.001 -testnumber 22 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1562.001 -testnumber 23 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1562.001 -testnumber 23 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1562.001 -testnumber 24 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1562.001 -testnumber 24 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한

#------------------------------------------------------------
# Defense Evasion - Indicator Removal on Host(T1070) T1070.001 Clear Windows Event Logs
#Atomic Test #1 - Clear Logs
invoke-atomictest T1070.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한 

#Atomic Test #2 - Delete System Logs Using Clear-EventLog
invoke-atomictest T1070.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한

#Atomic Test #3 - Clear Event Logs via VBA
invoke-atomictest T1070.001 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한

#------------------------------------------------------------
# Defense Evasion - Indicator Removal on Host(T1070) T1070.004 File Deletion
# Atomic Test #9 - Delete Prefetch File
invoke-atomictest T1070.004 -testnumber 9 -ExecutionLogPath $ExecutionLogPath #관리자 권한


#------------------------------------------------------------
# Defense Evasion - Masquerading(T1036) T1036.004 - Masquerade Task or Service
invoke-atomictest T1036.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1036.004 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1036.004 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1036.004 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한

#------------------------------------------------------------
# Defense Evasion - Modify Registry T1112 - Modify Registry
#Atomic Test #2 - Modify Registry of Local Machine - cmd
invoke-atomictest T1112 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1112 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한

#Atomic Test #3 - Modify registry to store logon credentials
invoke-atomictest T1112 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1112 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한

# T1112 - Atomic Test #6 - Change Powershell Execution Policy to Bypass
invoke-atomictest T1112 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1112 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한


#------------------------------------------------------------
# Defense Evasion - Subvert Trust Controls(T1553) T1553.006 Code Signing Policy Modification
invoke-atomictest T1553.006A -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한 필요
invoke-atomictest T1553.006A -Cleanup -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한 필요

##############################################################
# credential Access
##############################################################
#------------------------------------------------------------
# Credential Access - Credentials from Password Stores(T1555) T1555.003 - Credentials from Web Browsers

invoke-atomictest T1555.003 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1555.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한

#------------------------------------------------------------

#Credential Access - Network Sniffing
#invoke-atomictest T1040 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 240 #wireshark 설치 url변경됨, 다운로드 속도 오래걸림. 타임아웃 증가, 사전 설치로 변경 #관리자 권한
invoke-atomictest T1040 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#invoke-atomictest T1040 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #manual
#invoke-atomictest T1040 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 60 #프로그램 실행종료후 입력대기 문제로 120초 타임아웃 발생. 60초로 제한시간 수정

#Credential Access - OS Credential Dumping
invoke-atomictest T1003 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#invoke-atomictest T1003 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한 #manual
#invoke-atomictest T1003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #manual
#invoke-atomictest T1003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한 #manual

invoke-atomictest T1003.001 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1003.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #GUI 테스트
invoke-atomictest T1003.001 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 7 -GetPrereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1003.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 9 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 9 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 11 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #.net5 설치 필요
invoke-atomictest T1003.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 12 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 12 -ExecutionLogPath $ExecutionLogPath #실행시 에러발생하나 실행은 완료됨.
invoke-atomictest T1003.001 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath

invoke-atomictest T1003.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1003.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1003.002 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath#관리자 권한
invoke-atomictest T1003.002 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1003.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1003.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1003.002 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1003.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자 권한


##############################################################
# Discovery
##############################################################
#------------------------------------------------------------
# Discovery - Remote System Discovery(T1018) T1018 - Remote System Discovery
# Atomic Test #8 - Remote System Discovery - nslookup
invoke-atomictest T1018 -testnumber 8 -ExecutionLogPath $ExecutionLogPath

# Atomic Test #9 - Remote System Discovery - adidnsdump
invoke-atomictest T1018 -testnumber 9 -ExecutionLogPath $ExecutionLogPath #관리자

#------------------------------------------------------------
# Discovery - System Network Connections Discovery(T1049) T1049 - System Network Connections Discovery
invoke-atomictest T1049 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath  #관리자 권한
invoke-atomictest T1049 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자 권한


##############################################################
# Lateral Movement
##############################################################
#------------------------------------------------------------
# Lateral Movement - Remote Services(T1021) - T1021.002 - SMB/Windows Admin Shares
invoke-atomictest T1021.002 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1021.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1021.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# Lateral Movement - Remote Services(T1021) - T1021.006 - Windows Remote Management
invoke-atomictest T1021.006 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한

#invoke-atomictest T1021.006 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한 #get_prereq_command 실행 안됨
#invoke-atomictest T1021.006 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한

##############################################################
# Collection
##############################################################


##############################################################
# Command and Controll
##############################################################
invoke-atomictest T1003.004 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1003.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1003.004 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath  #관리자 권한

#------------------------------------------------------------
# Credential Access - Unsecured Credentials(T1552) T1552.001 - Credentials In Files
invoke-atomictest T1552.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath  #관리자 권한

#------------------------------------------------------------
#Command and Control - Ingress Tool Transfer - T1105 - Ingress Tool Transfer
invoke-atomictest T1105 -testnumber 11 -ExecutionLogPath $ExecutionLogPath #echo 뒤에 ' 추가  #관리자 권한
invoke-atomictest T1105 -testnumber 12 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1105 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한

#------------------------------------------------------------
#Command and Control - Remote Access Software - T1219 - Remote Access Software
invoke-atomictest T1219 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Teamviewer.exe 실행 전 start-sleep 10 추가 #관리자 권한
invoke-atomictest T1219 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1219 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1219 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1219 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Start-Process $file1 /quiet 변경 #Start-Sleep 10 추가 #C:\Program Files (x86)\LogMeIn Ignition 변경 #관리자 권한
invoke-atomictest T1219 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한

##############################################################
# Exfiltration
##############################################################


##############################################################
# Impact
##############################################################

#------------------------------------------------------------
#Impact - Inhibit System Recovery(T1490) T1490 - Inhibit System Recovery

# Atomic Test #1 - Windows - Delete Volume Shadow Copies
#invoke-atomictest T1490 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #DC에서 실행 #관리자 권한
#invoke-atomictest T1490 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #DC에서 실행 #관리자 권한

# Atomic Test #2 - Windows - Delete Volume Shadow Copies via WMI
#invoke-atomictest T1490 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #DC에서 실행 (추가) #관리자 권한
#invoke-atomictest T1490 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #실행 전에 SHADOW COPY 생성 필요함. #DC에서 

# Atomic Test #3 - Windows - wbadmin Delete Windows Backup Catalog
invoke-atomictest T1490 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한

# Atomic Test #4 - Windows - Disable Windows Recovery Console Repair
invoke-atomictest T1490 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1490 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한

# Atomic Test #5 - Windows - Delete Volume Shadow Copies via WMI with PowerShell
#invoke-atomictest T1490 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #DC에서 실행 (추가) #관리자 권한
#invoke-atomictest T1490 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #실행 전에 SHADOW COPY 생성 필요함. #DC에서 실행 #관리자 권한

# Atomic Test #6 - Windows - Delete Backup Files
invoke-atomictest T1490 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자 권한

# Atomic Test #7 - Windows - wbadmin Delete systemstatebackup
#invoke-atomictest T1490 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #제외. 해당 Windows 버전에서 미지원

#------------------------------------------------------------
#Impact - Service Stop(T1489) T1489 - Service Stop

# Atomic Test #1 - Windows - Stop service using Service Controller
invoke-atomictest T1489 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1489 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한

# Atomic Test #2 - Windows - Stop service using net.exe
invoke-atomictest T1489 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1489 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한

# Atomic Test #3 - Windows - Stop service by killing process
invoke-atomictest T1489 -testnumber 3 -ExecutionLogPath $ExecutionLogPath


#------------------------------------------------------------
#Impact - System Shutdown/Reboot(T1529) T1529 - System Shutdown/Reboot

# Atomic Test #1 - Shutdown System - Windows
# invoke-atomictest T1529 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #수동 실행

# Atomic Test #2 - Restart System - Windows
# invoke-atomictest T1529 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 원한 #수동 실행