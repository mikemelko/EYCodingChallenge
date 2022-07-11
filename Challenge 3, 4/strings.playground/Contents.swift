import Foundation

//  Challenge 3

let str = "EY is the best place to work."

// Version 1. A functional approach using arrays.
func removeSpaces(string: String) -> String {
  let a = Array(string).map{ String($0) }.filter{$0 != " "}
  return a.reduce("") { $0 + $1 }
}

print(removeSpaces(string: str))

// Version 2. A more direct approach.
func removeSpaces_2(string: String) -> String {
  var joined: String = ""
  for i in 0 ..< string.count {
    let index = str.index(str.startIndex, offsetBy: i)
    
    if string[index] != " " {
      joined += String(string[index])
    }
  }
  return joined
}

print(removeSpaces_2(string: str))

//  Challenge 4

print(["alpha", "beta", "gamma"].map{ $0.uppercased() })
