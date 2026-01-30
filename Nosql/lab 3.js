//    1. Provide the MongoDB code for enforcing JSON schema validation when creating a collection named "employees" with required fields "name," "age" (min. 18), and "department" (limited to ["HR," "Engineering," "Finance"]).
db.createCollection("newEmployees", {
    validator: {
        $jsonSchema: {
            bsonType: "object",
            required: ["name", "age", "department"],
            properties: {
                name: {
                    bsonType: "string",
                    description: "must be a string and is required"
                },
                age: {
                    bsonType: "int",
                    minimum: 18,
                    description: "must be an integer >= 18 and is required"
                },
                department: {
                    enum: ["HR", "Engineering", "Finance"],
                    description: "must be one of the allowed values and is required"
                }
            }
        }
    },
    validationLevel: "strict",
    validationAction: "error"
});


db.newEmployees.insertOne({
    name: "Bob",
    age: 16,
    department: "HR"
});



//    2. Create new Database named Demo
use Demo

db.createCollection("trainningCenter1")
db.createCollection("trainningCenter2")

var data = [
    {
        _id: 1,
        name: { firstName: "Mohamed", lastName: "Ahmed" },
        age: 25,
        address: "Cairo, Egypt",
        status: ["active", "verified"]
    },
    {
        _id: 2,
        name: { firstName: "Noha", lastName: "Mahmoud" },
        age: 30,
        address: "Alexandria, Egypt",
        status: ["active", "pending"]
    },
    {
        _id: 3,
        name: { firstName: "Malak", lastName: "Mohamed" },
        age: 22,
        address: "Giza, Egypt",
        status: ["inactive", "verified"]
    },
    {
        _id: 4,
        name: { firstName: "Mazen", lastName: "Mohamed" },
        age: 45,
        address: "Cairo, Egypt",
        status: ["active"]
    },
    {
        _id: 5,
        name: { firstName: "Eman", lastName: "Ali" },
        age: 55,
        address: "Alexandria, Egypt",
        status: ["pending"]
    }
]

var firstDoc = data.shift()
db.trainningCenter1.insertOne(firstDoc)

var firstDoc = data.slice(0, 1)[0]
db.trainningCenter1.insertOne(firstDoc)

var firstDoc = data.find(function () { return true })
db.trainningCenter1.insertOne(firstDoc)

var [firstDoc] = data
db.trainningCenter1.insertOne(firstDoc)

db.trainningCenter.insertOne(data)
db.trainningCenter2.insertMany(data)


db.trainningCenter1.insertMany([
    { _id: 1, name: { firstName: "Mohamed", lastName: "Ahmed" }, age: 25 },
    { _id: 2, name: { firstName: "Noha", lastName: "Mahmoud" }, age: 30 },
    { _id: 3, name: { firstName: "Malak", lastName: "Mohamed" }, age: 25 },
    { _id: 4, name: { firstName: "Mohamed", lastName: "Ali" }, age: 35 },
    { _id: 5, name: { firstName: "Eman", lastName: "Ahmed" }, age: 40 }
])

//    3. Use find. explain function (find by age field) and mention scanning type
db.trainningCenter1.find({ age: 25.0 }).explain("executionStats")

//    4. Create index on created collection named it “IX_age” on age field
db.trainningCenter1.createIndex({ age: 1 }, { name: "IX_age" })


//    5. Use find. explain view winning plan for index created (find by age field) and mention scanning type
db.trainningCenter1.find({ age: 25.0 }).explain("executionStats")



//    6. Create index on created collection named it “compound” on firstNsme and lastName
db.trainningCenter1.find({ "name.firstName": "Mohamed", "name.lastName": "Ahmed" })
db.trainningCenter1.createIndex({  "name.firstName": 1, "name.lastName": 1 }, { name: "IX_name" })
db.trainningCenter1.find({ "name.firstName": "Mohamed", "name.lastName": "Ahmed" })


//    7. Drop Demo Database
db.dropDatabase()

//    Bonus

//    a) Use mongodump to back up your Lab database.
// mongodump --db Demo --out ~/mongodb_backups/

//    b) Drop the Lab database.
db.dropDatabase()

//    c) Use mongorestore to restore it with a new name: ITI_Course.
// mongorestore --db Lab ~/mongodb_backups/Demo/

