%dw 2.0
output application/json
// https://www.youtube.com/watch?v=2oKMz9lSBbo&list=PL6xO4FqzSzuZ8LOe4WE3BzE7MlRRvfEjH&index=3
/*
 1.15
 */
var firtsNumber= 20
var secondNumber= 10
var firtsName = "mule"
var secondName= "ESB"
var empNameArray = ["Chinna", "Ravi" ]
var empObject = {
    "empId": 190090,
    "empName": "Chinna",
    "empStatus": "A"
 }
 var empList = [
     {
    "empId": 190090,
    "empName": "Chinna",
    "empStatus": "A"
    },
    {
    "empId": 8979,
    "empName": "Ravi",
    "empStatus": "A"
    }
 ]
---
[{
    "arithmenticOperators":{
        "addition": firtsNumber + secondNumber,
        "substraction": firtsNumber -secondNumber,
        "multiplication": firtsNumber* secondNumber,
        "division": firtsNumber/secondNumber


    }
},
{
     "comparisonOperators":{

         "equlto": firtsNumber == secondNumber,
         "lessThan": firtsNumber < secondNumber,
         "graterThan": firtsNumber> secondNumber,
         "notEquato": firtsNumber != secondNumber,
         "lessTHanOrEqualTo": firtsNumber<= secondNumber,
         "greaterThanOrEqualto": firtsNumber>secondNumber

    },
    "++ operator":{

         "equlto": firtsName ++ " "++ secondName,
         "empNames": empNameArray ++ ["ESB"],
         "emplPayload": empObject ++ { empSalary : 564564},
         "empListPayload": empList ++[{
                "empId": 3543,
                "empName": "Mule",
                "empStatus": "C"
         }]


    },

}
]