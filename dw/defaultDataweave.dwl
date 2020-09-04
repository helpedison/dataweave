%dw 2.0
output application/java
var employee={
    empName: "Michael Silva",
    empLocation: null,
    empExperience:"42",
    isActive:"true"
}
---
{
    empName: employee.empName as String default "",
    empLocation: employee.empLocation as String default "",
    empExperience: employee.empExperience as String default "",
    isActive : employee.isActive as Boolean default false
}