%dw 2.0
output application/json


    var empList =[

        {
            "empID": 100,
            "empName":"Chinna",
            "empStatus":"A"
        },
        {
            "empID": 100,
            "empName":"Chinna",
            "empStatus":"A"
         }
         ,

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
{
    "distinctByEmployees":empList distinctBy (item, index) -> item,
  //  "orderByEmployees": empList orderBy(item, index) -> item.empID,
    "orderByEmployeesAsc": empList orderBy $.empID,
    "orderByEmployeesDesc": empList orderBy  -$.empID,
    "orderByEmployeesByStatus": empList groupBy $.empStatus,
    "inactiveEmployees": (empList filter($.empStatus == "I")).empID  joinBy  ", ",
    "employees":empList  orderBy  $.empID  distinctBy  $.empID map ((emp, indexOfEmp) ->{
        "employeeId": emp.empID,
        "employeeName": emp.empName,
        "employeeStatur":emp.empStatus
    })

 }