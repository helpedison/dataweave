%dw 2.0
output application/xml
---
emp: {
    empId: payload.empId,
    empName :payload.empName,
    empEmail: payload.empEmail,
    empStatus: payload.empStatus
}