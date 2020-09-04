%dw 2.0
output application/json
---
{
    "core-fun":"abs - returns the absolute vaule of a number",
    "abs-num1": abs(-2),
    "abs-num2": abs(2.5),
    "abs-num3": abs(-3.4),
    "abs-num4": abs(3),

    "core-fun": "avg- returns the average of numbers listed in an array",
    "avg-num1": avg([1,1000]),
    "avg-num2": avg([1,2,3]),

    "core-fun": "ceil- Rounds a number up to the nearest whole number",
    "ceil-num1": ceil(1.5),
    "ceil-num2": ceil(2.1),
    "ceil-num3": ceil(3),

    "core-fun": "floor- Rounds a number down to the nearest whole number",
    "floor-num1": floor(1.5),
    "floor-num2": floor(2.2),
    "floor-num3": floor(3),
    "floor-num4": floor(4.9),

    "core-fun": "round- Rounds a number up or down to the nearest whole number",
    "round-num1": floor(1.2),
    "round-num2": floor(3.7),

    "core-fun": "min- Returns the lowest Comparable value in an array",
    "min-num1": min([1,1000]),
    "min-num2": min([1,2,3]),
    "min-num3": min([1.5,2.5,3.5,0.5]),

    "core-fun":"minby- Iterates over an array of objects to return the lowst value value of comparable elements",
    "minby-num1":[{"a":1},{"a":2},{"a":3}] minBy (item) -> item.a,

    "core-fun":"max- returns the hignest Comparable value in an array",
    "max-num1": max([1,1000]),
    "max-num2": max([1,2,3]),
    "max-num3": max([1.5,2.5,3.5]),

    "core-fun":"maxby- Iterates over an array of objects to return the hightest value value of comparable elements",
    "maxby-num1":[{"a":1},{"a":2},{"a":3}] maxBy (item) -> item.a,

    "core-fun": "max -Returns the hightest comparable value in an array",
    "max-num1": max([1,1000]),
    "max-num2": max([1,2,3]),
    "max-num3": max([1.5,2.5,3.5]),

    "core-fun": "isEven - returns true if the given number is an integer /(which lacks decimals), false if not",
    "isEven-num1":isEven(1.5),
    "isEven-num2":isEven(2),
    "isEven-num2":isEven(3),

 "core-fun": "isOdd - Returns true if the given number is an integer /(which lacks decimals), false if not",
    "isOdd-num1":isOdd(1.5),
    "isOdd-num2":isOdd(2),
    "isOdd-num2":isOdd(3),

  "core-fun": "isInteger - Returns true if the given number is an integer /(which lacks decimals) false, false if",
    "isInteger-num1":isInteger(1.5),
    "isInteger-num2":isInteger(2),
    "isInteger-num2":isInteger(3),

    "core-fun": "isDecimal - Returns true if the given number is an decimal /(which lacks decimals) false, false if",
    "isDecimal-num1": isDecimal(1.5),
    "isDecimal-num2": isDecimal(2.1),
    "isDecimal-num2": isDecimal(3),






}