%dw 2.0
output application/json
var country = "USA"
var city = "New york"
---
if(country =="USA"){
    currency:"USD",
    city: city
} else if ( country == "India"){
    currency:"USD",
    city: city
}
else  {
    currency:"None",
    city: "None"
}
