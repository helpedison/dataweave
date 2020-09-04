 %dw 2.0
 output application/csv headerLineNumber=0, header= true,
 ---
 [{
     empID: payload.empId as String,
     empName: payload.empName,
     empEmail: payload.empEmail,
     empStatus: payload.empStatus
 }]
