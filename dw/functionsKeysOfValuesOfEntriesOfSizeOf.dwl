%dw 2.0
output application/json
var empName ="Chinna"
var empSkills= ["skill1","skill2"] as Array
var employee = {
    "empID":"76868",
    "empName": "Chinna",
    "empStatus": "A"
}
var employeeList =[
    {
        "empID":"76868",
        "empName": "Chinna",
        "empStatus": "A"
    },
    {
        "empID":"76868",
        "empName": "john",
        "empStatus": "A"
    },
    {
        "empID":"76868",
        "empName": "Mark",
        "empStatus": "A"
    },
    {
        "empID":"76868",
        "empName": "Mark",
        "empStatus": "A"
    }
]

---
{
    "sizeOf-FieldLevel":sizeOf(empName),
    "sizeOf-FieldLevek":sizeOf(empSkills),
    "sizeof-objectLevel":sizeOf(employee),
    "Sizeof-ArrayofObjectLeve": sizeOf(employeeList),
    "namesOfEmployeeObject":namesOf(employee),
    "entrieOfEmployeeObject":entriesOf(employee),
    "keysOfEmployyeObject":keysOf(employee),
    "valuesOfEmployyeObject":valuesOf(employee),

}



/*%dw 2.0
output application/json
---
if(payload.message > 0)
{
    "empID":"123456",
    "empName": "name",
    "empJoinDate": now()
}
else
{
   "message":"Employee Not Found"
}*/





