#------------------------------------------------------------
#Credential Access - OS Credential Dumping(T1003)
# Atomic Test #2 - Credential Dumping with NPPSpy
invoke-atomictest T1003 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한 #manual
invoke-atomictest T1003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #manual
invoke-atomictest T1003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한 #manual

#------------------------------------------------------------
#Impact - System Shutdown/Reboot(T1529) T1529 - System Shutdown/Reboot
# Atomic Test #1 - Shutdown System - Windows
nvoke-atomictest T1529 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #수동 실행

# Atomic Test #2 - Restart System - Windows
invoke-atomictest T1529 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 원한 #수동 실행

