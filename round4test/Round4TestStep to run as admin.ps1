# 이 스크립트는 Round4TestStep.ps1 실행 전에 관리자 권한으로 먼저 수행해야 함
 
$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="c:\round4test\atomics"}
$ExecutionLogPath = "C:\round4test\atomictest.log"
$isAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).isInRole([Security.Principal.WindowsBuiltinRole]::Administrator) # 관리자 권한 확인


Import-Module "C:\round4test\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force

# Prerequistes

invoke-atomictest t1059.001 -testnumber 14 -getprereq -ExecutionLogPath $ExecutionLogPath


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
invoke-atomictest T1569.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1569.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한


invoke-atomictest T1543.003 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한 
invoke-atomictest T1543.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1543.003 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자권한

#Atomic Test #8 - Create a Process using obfuscated Win32_Process
invoke-atomictest T1047 -testnumber 8 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1047 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한



#Persistence - Boot or Logon Autostart Execution(T1547)
invoke-atomictest T1547.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1547.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1547.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1547.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1547.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1547.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1547.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1547.001 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1547.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1547.001 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1547.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1547.001 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한

invoke-atomictest T1547.005 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한

# T1136.001 - Local Account
invoke-atomictest T1136.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1136.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한

invoke-atomictest T1136.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1136.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한

invoke-atomictest T1136.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1136.001 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한

# Persistence - Create Account(T1136) : T1136.002 - Domain Account
invoke-atomictest T1136.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1136.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한 


#Persistence - Create or Modify System Process(T1543)

invoke-atomictest T1543.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1543.003 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1543.003 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1543.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1543.003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1543.003 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1543.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1543.003 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한


#Persistence - Hijack Execution Flow(T1574)
invoke-atomictest T1574.010A -testnumber 1  -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1574.010A -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1574.010A -testnumber 1 -cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한

invoke-atomictest T1574.009 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1574.009 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한

invoke-atomictest T1574.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1574.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한


#Privilege Escalation - Abuse Elevation Control Mechanism(T1548)
invoke-atomictest T1548.002 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1548.002 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1548.002 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1548.002 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1548.002 -testnumber 8 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1548.002 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한

#Privilege Escalation - Process Injection(T1055)
invoke-atomictest T1055.001 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1055.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath

# Defense Evasion - File and Directory Permissions Modification(T1222) T1222.001 Windows File and Directory Permissions Modification
invoke-atomictest T1222.001 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1222.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1222.001 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한

# Defense Evasion - Impair Defenses(T1562) T1562.001 Disable or Modify Tools
invoke-atomictest T1562.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1562.001 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1562.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1562.001 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1562.001 -testnumber 12 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1562.001 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1562.001 -testnumber 13 -ExecutionLogPath $ExecutionLogPath #관리자  권한 #McAfeeDLPAgentService 서비스가 설치되어야함. getprereqs를 작성해야할것으로 보임.
#invoke-atomictest T1562.001 -testnumber 13 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한 #McAfeeDLPAgentService 서비스가 설치되어야함. getprereqs를 작성해야할것으로 보임.
invoke-atomictest T1562.001 -testnumber 14 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1562.001 -testnumber 14 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1562.001 -testnumber 15 -ExecutionLogPath $ExecutionLogPath #관리자  권한 #windows defender atp. 설치 필요
#invoke-atomictest T1562.001 -testnumber 15 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한 #windows defender atp. 설치 필요
#invoke-atomictest T1562.001 -testnumber 16 -ExecutionLogPath $ExecutionLogPath #관리자  권한 #Windwos Defender disable, access denied
#invoke-atomictest T1562.001 -testnumber 16 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한 #Windwos Defender disable, access denied
invoke-atomictest T1562.001 -testnumber 17 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1562.001 -testnumber 17 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1562.001 -testnumber 19 -ExecutionLogPath $ExecutionLogPath #관리자  권한 #테스트 실패
#invoke-atomictest T1562.001 -testnumber 20 -ExecutionLogPath $ExecutionLogPath #관리자  권한 #McAfeeDLPAgentService 서비스 필요.
invoke-atomictest T1562.001 -testnumber 21 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1562.001 -testnumber 22 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1562.001 -testnumber 22 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1562.001 -testnumber 23 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1562.001 -testnumber 23 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1562.001 -testnumber 24 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1562.001 -testnumber 24 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한

#------------------------------------------------------------
# Defense Evasion - Subvert Trust Controls(T1553) T1553.006 Code Signing Policy Modification
invoke-atomictest T1553.006A -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한 필요
invoke-atomictest T1553.006A -Cleanup -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한 필요

#Credential Access - Network Sniffing
#invoke-atomictest T1040 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 240 #wireshark 설치 url변경됨, 다운로드 속도 오래걸림. 타임아웃 증가, 사전 설치로 변경 #관리자  권한
invoke-atomictest T1040 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1040 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1040 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 60 #프로그램 실행종료후 입력대기 문제로 120초 타임아웃 발생. 60초로 제한시간 수정

#Credential Access - OS Credential Dumping
invoke-atomictest T1003 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1003 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한

invoke-atomictest T1003.001 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1003.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #GUI 테스트
invoke-atomictest T1003.001 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 7 -GetPrereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1003.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 9 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 9 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 11 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #.net5 설치 필요
invoke-atomictest T1003.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 12 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 12 -ExecutionLogPath $ExecutionLogPath #실행시 에러발생하나 실행은 완료됨.
invoke-atomictest T1003.001 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath

invoke-atomictest T1003.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1003.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1003.002 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath#관리자  권한
invoke-atomictest T1003.002 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1003.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1003.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1003.002 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
invoke-atomictest T1003.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자  권한

#------------------------------------------------------------
#Command and Control - Remote Access Software - T1219 - Remote Access Software
invoke-atomictest T1219 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Teamviewer.exe 실행 전 start-sleep 10 추가
invoke-atomictest T1219 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1219 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1219 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1219 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Start-Process $file1 /quiet 변경 #Start-Sleep 10 추가 #C:\Program Files (x86)\LogMeIn Ignition 변경
invoke-atomictest T1219 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
#Impact - Inhibit System Recovery(T1490) T1490 - Inhibit System Recovery

invoke-atomictest T1490 -testnumber 1 -CheckPrereqs -ExecutionLogPath $ExecutionLogPath #DC에서 실행 #관리자 권한
invoke-atomictest T1490 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #DC에서 실행 #관리자 권한
invoke-atomictest T1490 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #DC에서 실행 #관리자 권한
invoke-atomictest T1490 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #DC에서 실행 (추가) #관리자 권한
invoke-atomictest T1490 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #실행 전에 SHADOW COPY 생성 필요함. #DC에서 실행 #관리자 권한
invoke-atomictest T1490 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1490 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1490 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한
invoke-atomictest T1490 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #DC에서 실행 (추가) #관리자 권한
invoke-atomictest T1490 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #실행 전에 SHADOW COPY 생성 필요함. #DC에서 실행 #관리자 권한
invoke-atomictest T1490 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#invoke-atomictest T1490 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #제외. 해당 Windows 버전에서 미지원