/*:
## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    func description(){
        print("At the price off \(price), \(author) gives us \(pages) pages of \(title) that you can enjoy!")
    }
}
var myBook = Book(title: "Room", author: "Emma D.", pages: 200, price: 16.99)
myBook.description()
//:  A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    mutating func like() {
        likes += 1
    }

}
var myPost = Post(message: "Hello", likes: 0, numberOfComments: 5 )
myPost.like()
myPost.like()
myPost.like()
print(myPost)
myPost.like()
myPost.like()
myPost.like()
print(myPost)
/*:
[Previous](@previous)  |  page 5 of 10  |  [Next: App Exercise - Workout Functions](@next)
 */
