%dw 2.0
output application/json

var empList =[

    {
        "empID": 100,
        "empName":"Chinna",
        "empStatus":"A"
    },
     {
        "empID": 101,
        "empName":"Mark",
        "empStatus":"I"
    },
     {
        "empID": 102,
        "empName":"John",
        "empStatus":"I"
    },
     {
        "empID": 103,
        "empName":"Stehphen",
        "empStatus":"A"
    }
]
---
    empList map(emp,indexOfEmp) ->{
        "employeeId":emp.empID,
        "employeeName": emp.empName,
        "empStatus" : emp.empStatus
    }


