//    1. Find documents where the "tags" field exists.
db.inventory.find({}) // search on  69720848a946c8b1148ce5cb
db.inventory.find({ tags: { $exists: true } }) // search on 69720848a946c8b1148ce5cb

//    2. Find documents where the "tags" field does not contain values "ssl" or "security.
db.inventory.find({}) // search on  69720848a946c8b1148ce5c5
db.inventory.find({ tags: { $nin: ["ssl", "security"] } }) // search on 69720848a946c8b1148ce5c5

//    3. Find documents where the "qty" field is equal to 85.
db.inventory.find({})
db.inventory.find({ "qty.num": 10 })

//    4. Find documents where the "tags" array contains all of the values [ssl, security] using the `$all` operator.
db.inventory.find({})
db.inventory.find({ tags: { $all: ["ssl", "security"] } })


//    4. Find documents where the "tags" array contains all of the values [ssl, security] using the `$all` operator.
db.inventory.find({})
db.inventory.find({ tags: { $all: ["ssl", "security"] } })

//    4.a. If you need to find only the two values "ssl" and "security", what change would you make to your query?
db.inventory.find({})
db.inventory.find({ tags: { $all: ["ssl", "security"], $size: 2 } })

//    5. Find documents where the "tags" array has a size of 3.
db.inventory.find({})
db.inventory.find({ tags: { $exists: true, $size: 3 } })



//    6. Update the "item" field in the "paper" document, update "size.uom" to "meter" and using the `$currentDate` operator.
db.inventory.find({ item: "paper" })
db.inventory.updateOne({ item: "paper" }, { $set: { "size.uom": "meter" }, $currentDate: { lastModified: true } })
db.inventory.find({ item: "paper" })

//    6.a. Also, use the upsert option (within updateOne)and change filter condition item:”laptopDevice”.
db.inventory.find({ item: "laptopDevice" })
db.inventory.updateOne({ item: "laptopDevice" }, { $set: { "size.uom": "meter" }, $currentDate: { lastModified: true } }, { upsert: true })
db.inventory.find({ item: "laptopDevice" })

//    6.b. Use the $setOnInsert operator to add new data if an insert occurs.    Example field: dataSource: "todayRegister"
db.inventory.find({ item: "newdevice" })
db.inventory.updateOne({ item: "newdevice" }, { $set: { "size.uom": "meter" }, $currentDate: { lastModified: true }, $setOnInsert: { dataSource: "todayRegister" } }, { upsert: true })
db.inventory.find({ item: "newdevice" })

//    6.c. Try using the updateMany operation.
db.inventory.find({})
db.inventory.updateMany({}, { $set: { "size.uom": "meter" } })
db.inventory.find({})

//    6.d. Try using the `replaceOne` operation.
db.inventory.find({ item: "paper" })
db.inventory.replaceOne({ item: "paper" }, { item: "paper", size: { uom: "meter" }, lastModified: new Date() });
db.inventory.find({ item: "paper" })


//    7. Insert a document with incorrect field names "neme" and "ege," then rename them to "name" and "age."
db.inventory.insertOne({
    neme: "Alice",
    ege: 30
});

db.inventory.find({ neme: { $exists: true } })

db.inventory.updateOne({ neme: { $exists: true } }, { $rename: { neme: "name", ege: "age" } }, {})

db.inventory.find({ name: { $exists: true } })


//    8. Try to reset any document field using the `$unset` function.
db.inventory.find({ item: "newdevice" })
db.inventory.updateMany({ item: "newdevice" }, { $unset: { lastModified: "" } });
db.inventory.find({ item: "newdevice" })


//    9. Try update operators like `$inc`, `$min`, `$max`, and `$mul` to modify document fields.
//    - Use $max on the field: salary
db.employees.find({ name: "John Doe" })
db.employees.updateOne({ name: "John Doe" }, { $max: { salary: 120000 } })
db.employees.find({ name: "John Doe" })
db.employees.updateOne({ name: "John Doe" }, { $max: { salary: 5000 } })

//    - Use $min on the field: overtime
db.employees.find({ _id: "new_data" })
db.employees.updateOne({ _id: "new_data" }, { $setOnInsert: { overtime: 10 } }, { upsert: true });
db.employees.find({ _id: "new_data" })
db.employees.updateOne({ _id: "new_data" }, { $min: { overtime: 8 } });
db.employees.find({ _id: "new_data" })
db.employees.updateOne({ _id: "new_data" }, { $min: { overtime: 15 } });
db.employees.find({ _id: "new_data" })

//    - Use $inc on the field: age
db.employee.find({ _id: 2.0 })
db.employee.updateOne({ _id: 2.0 }, { $inc: { age: 20 } })
db.employee.find({ _id: 2.0 })

//    - Use $mul on the fields: quantity and price
db.sales.find({ product: "Widget" })
db.sales.updateOne({ product: "Widget" }, { $mul: { quantity: 20, price: 1.1 } })


//    10. Calculate the total revenue for product from sales collection documents within the date range '01-01-2020' to '01-01-2023' and then sort them in descending order by total revenue.
db.sales.find({})
db.sales.aggregate([
    {
        $match: {
            date: {
                $gte: ISODate("2020-01-01T00:00:00Z"),
                $lte: ISODate("2023-01-01T00:00:00Z")
            }
        }
    },
    {
        $addFields: {
            revenue: { $multiply: ["$quantity", "$price"] }
        }

    }, {
        $group: {
            _id: "$product",
            totalRevenue: { $sum: "$revenue" }

        }
    },
    { $sort: { totalRevenue: -1 } }
])

//    11. Calculate the average salary for employees for each department from the employee’s collection.
db.employees.find({})

db.employees.aggregate([{
    $match: {},
}, {
    $group: {
        _id: "$department",
        averageSalary: { $avg: "$salary" }
    }
}, {
    $sort: {
        averageSalary: -1
    }
}
]);

//    12. Use likes Collection to calculate max and min likes per title
db.likes.aggregate([
  { $match: {} },                                   

  { $group: {
      _id: "$title",
      maxLikes: { $max: "$likes" }, 
      minLikes: { $min: "$likes" }   
  }},

  { $sort: { _id: 1 } }              
]);
