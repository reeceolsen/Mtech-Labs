import UIKit
class object {
    var number = 1
    init(number: Int) {
        self.number = number
    }
}
var test1 = object(number: 5)
var test2 = test1

test1.number += 1
print(test1.number)
print(test2.number)
