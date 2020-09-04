
%dw 2.0
output application/json
// https://www.youtube.com/watch?v=otelNeyWlHs&list=PL6xO4FqzSzuZ8LOe4WE3BzE7MlRRvfEjH&index=4
---
{
       "todayDate": now() as Date{ "format": "yyyy-MM-dd"},
       "todayTime": now() as Time{ "format": "HH:mm:ss.SSS"},
       "currentHour": now() as Time { format: "HH" },
       "currantDateTime": now() as LocalDateTime { format: "yyyy-MM-dd HH:mm:ss.SSS"},
       "UTCTime": (now() >> "UTC" >> "IST") as DateTime { format: "yyyy-MM-dd HH:mm:ss"},
       "ISTTime": now() >> "IST",
       "ESTTime": now() >> "EST",
       "los_EnglesTime": now() >> "America/Los_Angeles",
       "NewyorkTime": now() >> "America/New_York"

}
