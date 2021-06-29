#------------------------------------------------------------
#Credential Access - OS Credential Dumping(T1003)
# Atomic Test #2 - Credential Dumping with NPPSpy
invoke-atomictest T1003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #테스트 후 로그아웃 해야지 파일이 생성됨.  lock 안됨. 

#------------------------------------------------------------
#Impact - System Shutdown/Reboot(T1529) T1529 - System Shutdown/Reboot

# Atomic Test #2 - Restart System - Windows
invoke-atomictest T1529 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 원한 #수동 실행

