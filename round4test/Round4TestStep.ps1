
$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="c:\round4test\atomics"}
$ExecutionLogPath = "C:\round4test\atomictest.log"
Import-Module "C:\round4test\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force
  
# Execution - Command and Scripting Interpreter(T1059) - Powershell
invoke-atomictest t1059.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
 

invoke-atomictest t1059.001 -testnumber 2 -getprereq -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath   # AD 에서 테스트해야 함.
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
 
##############################################################
# Execution - Command and Scripting Interpreter(T1059) - Python
## 테스트방법 연구 필요
invoke-atomictest t1059.006 -testnumber 1 -getprereq -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.006 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.006 -testnumber 1 -cleanup -ExecutionLogPath $ExecutionLogPath
 
##############################################################
# Execution - Command and Scripting Interpreter(T1059) - JavaScript

 
invoke-atomictest t1059.007A -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1059.007A -testnumber 1 -cleanup -ExecutionLogPath $ExecutionLogPath

invoke-atomictest t1059.007A -testnumber 2 -ExecutionLogPath $ExecutionLogPath

##############################################################
# Execution - Native API (T1106 )- Execution through API - CreateProcess
invoke-atomictest T1106 -testnumber 1   -ExecutionLogPath $ExecutionLogPath

##############################################################
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

##############################################################
# Execution - System Services(T1569)	Service Execution
#invoke-atomictest T1569.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1569.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한

invoke-atomictest T1569.002 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1569.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #계정 권한 필요 

## 대체함 
# invoke-atomictest T1543.003 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한 
# invoke-atomictest T1543.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자 권한
# invoke-atomictest T1543.003 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자권한


#----

#User Exection (T1204)
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

# Execution - Windows Management Instrumentation

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
invoke-atomictest T1047 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1047 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath

#Atomic Test #7 - Create a Process using WMI Query and an Encoded Command
invoke-atomictest T1047 -testnumber 7 -ExecutionLogPath $ExecutionLogPath

#Atomic Test #8 - Create a Process using obfuscated Win32_Process
invoke-atomictest T1047 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1047 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath






#Persistence - Create or Modify System Process(T1543)

#invoke-atomictest T1543.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1543.003 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1543.003 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1543.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1543.003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1543.003 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1543.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1543.003 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한

#invoke-atomictest T1574.010A -testnumber 1  -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1574.010A -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1574.010A -testnumber 1 -cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한


#Credential Access - Credentials from Password Stores

invoke-atomictest T1555 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
# Test#2, #3 추가되야함.


invoke-atomictest T1555.003 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 10 #프로그램 실행종료후 입력대기 문제로 120초 타임아웃 발생. -TimeoutSeconds 로 제한시간 수정.
invoke-atomictest T1555.003 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555.003 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath


#Credential Access - Network Sniffing
#invoke-atomictest T1040 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 240 #wireshark 설치 url변경됨, 다운로드 속도 오래걸림. 타임아웃 증가. #관리자  권한
#invoke-atomictest T1040 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1040 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1040 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 60 #프로그램 실행종료후 입력대기 문제로 120초 타임아웃 발생. 60초로 제한시간 수정

#Credential Access - OS Credential Dumping
#invoke-atomictest T1003 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #테스트 후 로그아웃 해야지 파일이 생성됨.  loclk 안됨.  #관리자  권한
#invoke-atomictest T1003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한

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

#invoke-atomictest T1003.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
##invoke-atomictest T1003.002 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #python3 필요. 수동설치 #관리자  권한
##invoke-atomictest T1003.002 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.002 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자  권한
#invoke-atomictest T1003.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자  권한