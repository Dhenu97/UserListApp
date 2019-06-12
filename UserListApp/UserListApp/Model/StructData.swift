
import Foundation

struct StructData : Codable {
    var users : [UsersList]
}
struct UsersList : Codable {

    var name:String
    var LastName:String
    var city:String
    var State:String
    var country:String
    var Street:String
    var pincode:String
    var phonenumber:String
    var age:String

    

}

/*"name": "ccc",
"LastName" : "ccc",
"city" : "Hyderbad",
"State" : "Telangan",
"country" : "India",
"Street" : "vasanthapuricolony",
"pincode" : "500040",
"phonenumber": "12345678",
"age" : "18"*/

