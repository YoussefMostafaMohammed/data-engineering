
//    1. Create a Database named "ITI_Mongo". 
use ITI_Mongo


//    2. Create a Collection named "Staff".
db.createCollection("Staff")


//    3. Insert one document into the "Staff" collection: {_id, name, age, gender, department}.
db.Staff.insertOne({ name: "Youssef", age: 26, gender: "Male", department: "Data Engineer" })


//    4. Insert many documents into the "Staff" collection:
db.Staff.insertMany(
    [
        { name: "Ahmed", age: 20, gender: "Male", department: "Embedded Engineer" },
        { name: "Malak", age: 25, gender: "Female", MangerName: "Youssef", department: "AI Engineer" },
        { name: "Mousa", age: 15, gender: "Male", DOB: "21-11-2011" }
    ]
)

//    1) Find all documents.
db.Staff.find()
//    2) Find documents where gender is "male".
db.Staff.find({ gender: "Male" })
//    3) Find documents with age between 20 and 25.
db.Staff.find({ age: 25, gender: "Female" })
//    4) Find documents where age is 25 and gender is "female".
db.Staff.find({ age: { $gte: 20, $lte: 25 } })
//    5) Find documents where age is 20 or gender is "female".
db.Staff.find({
    $or: [
        { age: 20 },
        { gender: "Female" }]
})

//    6. Update one document in the "Staff" collection where age is 15, set the name to "your name".
db.Staff.updateOne({ age: 15 }, { $set: { name: "Youssef" } })


//    7. Update many documents in the "Staff" collection, update the department to "AI".
db.Staff.updateMany({}, { $set: { department: "AI" } })


//    8. Create a new collection called "test" and insert documents from Question 4.
db.Staff.find({
    $or: [
        { name: "Ahmed" },
        { name: "Malak" },
        { name: "Mousa" }
    ]
}).forEach(function (doc) {
    delete doc._id;
    db.test.insertOne(doc);
});

db.test.find()

//    9. Try to delete one document from the "test" collection where age is 15.
db.test.deleteOne({ age: 15 });
//    9.a. the first one it find in the stored data 
db.test.find()
//    9.b. First insert: db.collection.insertOne({ _id: 5, name: "ahmed", age: 15 })
db.test.deleteMany({})
//    9.c. Firstdb.test.insertOne({ _id: 5, name: "ahmed", age: 15 })
db.test.insertOne({ _id: 5, name: "ahmed", age: 15 })
//    9.c. Firstdb.test.insertOne({ _id: 6, name: "eman", age: 15 })
db.test.insertOne({ _id: 6, name: "eman", age: 15 })
//    9.d When you run deleteOne, will it delete ahmed or eman? ahmed
db.test.deleteOne({ age: 15 })

db.test.find()


//    10. try to delete all male gender
db.test.deleteMany({ gender: "Male" })
db.test.find()


//    11. Try to delete all documents in the "test" collection.
db.test.deleteMany({})
db.test.find()
