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
    /* empList map(emp,indexOfEmp) ->{
            (emp mapObject
                if( ($) as String =="Chinna")
                  {
                    ($$):$,
                    "empLocation": "India",
                   }
                 else
                    {
                    ($$):$,*/



                     /* "employeeName": emp.empName,
                     "empstatus": emp.empStatus*/

    /*                 })
        }*/

     /*   empList filter($.empStatus=="A" and $.empName=="Chinna")  map(emp,indexOfEmp) ->{
         "employeeID":emp.empID,
         "employeeName": emp.empName,
         "empStatus" : emp.empStatus
         }
      */


       /* empList map((emp,indexOfEmp) ->{


          "employeeId":emp.empID,
          "employeeName": emp.empName,
           "employeeStatus" : emp.empStatus

         }) filter ( $.employeeStatus =="A" and $.employeeName =="Chinna")
       */

       /* empList filter ( $.empStatus =="A" and $.empName =="Chinna")
        map ((emp,indexOfEmp) ->{

         "employeeId":emp.empID,
         "employeeName": emp.empName,
         "employeeStatus" : emp.empStatus

        })*/

        empList[0]  filterObject (($)==100 )   mapObject ( empValue, empkey, indexOfEmp) -> {
                (empkey) : empValue
        }
