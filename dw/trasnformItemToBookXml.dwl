%dw 2.0
output application/xml
---
{
    book:{
        title @(lang: payload.item.properties.langage ): payload.item.properties.title,
        price: payload.item.price,
        author @(loc: "US"): payload.item.properties.author[0]
    }
}