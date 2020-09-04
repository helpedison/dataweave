%dw 2.0
output application/json
var country= "India"
var city ="Delhi"
---
{
    currency: if(country=="Usa") "USA" else if (country=="India") "IRIS" else "None",
    city: if(city != null) city as String else ""
}
