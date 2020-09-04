%dw 2.0
output application/json

// comentario
/*
  [---  core data types ----]
        String
        number
        Booleam
        Array
        Date
        DateTime
        LocalDateTime
        Time
        TimeZone

        variables
        1. pre defined variables
        2. use defined variables
 */

var emp= {
    "empID":36763,
    "empName":"Chinna",
    "empStatus": "A"
}
---
{
    name: emp.empName,
    salaray: 2342 as Number,
    employeeID: emp.empID

}
