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
    /*empList[0] mapObject(empValues, empkey, indexOfemp) -> {
          (empkey):indexOfemp
    }*/
     empList map(emp,indexOfEmp) ->{
            (emp mapObject
                if( ($) as String =="Chinna")
                  {
                    ($$):$,
                    "empLocation": "India",
                   }
                 else
                    {
                    ($$):$,



                     /* "employeeName": emp.empName,
                     "empstatus": emp.empStatus*/

                   })
        }
