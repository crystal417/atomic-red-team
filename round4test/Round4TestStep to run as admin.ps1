# 이 스크립트는 Round4TestStep.ps1 실행 전에 관리자 권한으로  먼저 수행해야 함
 
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