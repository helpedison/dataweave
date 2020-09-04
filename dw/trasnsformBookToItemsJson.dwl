%dw 2.0
output application/json
---
 {
     item:{
         price: payload.book.price,
         properties:{
             title: payload.book.title,
             author: (payload.book.title.@lang default "") ++ payload.book.author,
             year: payload.book.year,
             language: payload.book.title.@lang
         }
     }
 }