/*:
## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */

import Foundation
class Human : CustomStringConvertible, Equatable, Comparable, Codable {
    var name : String
    var age : Int
    
    init(name : String, age : Int) {
        self.name = name
        self.age = age
    }
    
    var description: String {
        return "\(name) is \(age) years old"
    }
    
    static func ==(human1 : Human, human2 : Human) -> Bool {
        return human1.name == human2.name && human1.age == human2.age
    }
    
    static func <(human1 : Human, human2 : Human) -> Bool {
        return human1.age < human2.age
    }
}

var human1 = Human(name: "Marcelo", age: 24)
var human2 = Human(name: "Adrian", age: 23)

//:  Make the `Human` class adopt the `CustomStringConvertible` protocol. Print both of your previously initialized `Human` objects.
print(human1)
print(human2)
//:  Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
print(human1 == human2)
print(human1 != human2)
//:  Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
var human3 = Human(name: "Bernardo", age: 22)
var human4 = Human(name: "Natalia", age: 21)
var human5 = Human(name: "Curty", age: 20)

var people : [Human] = [human1, human2, human3, human4, human5]
print(people)
var sortedPeople = people.sorted(by: <)
print(sortedPeople)

//:  Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.
var encoder = JSONEncoder()

if let jsonData = try? encoder.encode(human1), let jsonString = String(data: jsonData, encoding: .utf8) {
    print(jsonString)
}

/*:
page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
 */
