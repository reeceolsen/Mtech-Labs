/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var manyThings: [Any] = ["elephant", 3, 1.1, false, "17.99"]

//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for i in manyThings {
    if i is String{
        print("the string is \(i)")
    } else if i is Int {
        print("the value of the integer is \(i)")
    } else if i is Double {
        print("the double value is \(i)")
    } else if i is Bool {
        print("the value of the boolean is \(i)")
    }

}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var manyDictionary: [String: Any] = [:]

//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0
for thing in manyThings {
    print(total)
    if let string = thing as? String {
        total += 1
    } else if let integer = thing as? Int {
        total += Double(integer)
    } else if let double = thing as? Double {
        total += double
    }  else if let bool = thing as? Bool {
        if bool == true {
            total += 2
        } else {
            total = total - 3
        }
    }
}
print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0
for thing in manyThings {
    if let string = thing as? String {
        if let string = Double(string) {
            total2 += string
        }
    } else if let integer = thing as? Int {
        total2 += Double(integer)
    } else if let double = thing as? Double {
        total2 += double
        
    }
    
}
print (total2)

/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
