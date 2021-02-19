import UIKit

//Without Map
func hashtags(in string:String) -> [String] {
    let words = string.components(separatedBy: .whitespacesAndNewlines)
    return words.filter({$0.starts(with: "#")})
}

let tags = hashtags(in: "#swift with great programming #languague")
print(tags)

//Map Example

let string = ["Hi we are using the #map",
            "It is #interesting #topic you know",
            "once you get to know you #love it",
            ]
let tag = string.map({hashtags(in: $0)})
print(tag)

//Using Flat Map

let flatMap = string.flatMap({hashtags(in: $0)})
print(flatMap)

//Compact Map
let number = ["42","52","NAN"]
let onlyNumber = number.compactMap({ Int($0)})
print(onlyNumber)

//Other using Compact Map to integer
let intNumber = number.compactMap(Int.init)
print(intNumber)
