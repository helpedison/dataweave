%dw 2.0
output application/json
var name ="chinna"
---
{

    "contains example":"mulesoft" contains ("mule"),
    "find example": "aabbccdbce" find "a",
    "is balnak example": isBlank("hello"),
    "isempty example array": isEmpty([1,2,3]),
    "isempty example string": isEmpty(null),
    "empName": if (! isEmpty(name)) name else "not provided",
    "lower example":lower("MULESOFT"),
    "upper example":upper("esb"),
    "mateches example":"me@mulesoft.com"matches(/([a-z]*)@([a-z]*).com/),
    "replace example" :"admin123" replace "123" with("ID"),
    "splitby example" : "a-b-c" splitBy ("-")[0],
    "startsWitch example": "Mariano" startsWith  ("Mar"),
    "endWitch example": "Mariano" endsWith    ("no"),
    "trim example":trim("my really long text")

}