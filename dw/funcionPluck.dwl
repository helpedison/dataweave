%dw 2.0
output application/json
var employee ={
    "empId":100,
    "empName":"Chinna",
    "empStatus":"A"
}
---
 {
      "KeysOffEmployee": employee pluck $$,
      "valuesOffEmployee": employee pluck $
 }