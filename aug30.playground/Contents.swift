import UIKit

struct Person {
    var firstName: String
    var lastName: String
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}
let bob = Person(firstName: "Bob", lastName: "Smith")
print("Hello \(bob.fullName)")
