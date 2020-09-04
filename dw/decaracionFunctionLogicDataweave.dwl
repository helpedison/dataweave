%dw 2.0
output application/json
var test= null
fun calExperience(joinDate) = daysBetween(|2016-10-01T23:57:59-03:00| as LocalDateTime {format:"yyyy-MM-dd HH:mm:ss"}, now() as LocalDateTime {format:"yyyy-MM-dd HH:mm:ss"})
---
{
"empId": "1234545",
"empName": "Nombre",
"empJoinDate": now(),
"empExpireince": calExperience(now()),
"gratuity":  if((calExperience(now())) >5 ) "eligible" else "not-eligible" ,
// muestra si es diferente de null
("test":test) if(test != null)
}