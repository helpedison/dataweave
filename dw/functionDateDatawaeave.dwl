%dw 2.0
output application/json
---
{
    now: now(),
    isLeapYear1 : isLeapYear(|2016-10-01T23:57:59|),
    isLeapYear2 : isLeapYear(|2017-10-01T23:57:59|),
    days:  daysBetween(|2016-10-01T23:57:59-03:00|,|2017-10-01T23:57:59-03:00|),
    epochTime: now() as Number,
    nanoseconds: now().nanoseconds,
    milliseconds: now().milliseconds,
    seconds: now().seconds,
    minutes: now().minutes,
    hour: now().hour,
    day: now().day,
    month: now().month,
    year: now().year,
    quarter: now().quarter,
    dayOfWeek: now().quarter,
    dayOfYear: now().dayOfYear,
    offsetSeconds: now().offsetSeconds
}