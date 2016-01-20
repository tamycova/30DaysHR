import Foundation

var inputs = [Any]()
inputs.append(5.35)
inputs.append(Character("a"))
inputs.append(false)
inputs.append(100)
inputs.append("I am a code monkey")
inputs.append(true)
inputs.append(17.3)
inputs.append(Character("c"))
inputs.append("derp")

for input in inputs {
  switch input {
  case is Double:
    print("Primitive : double")
  case is Character:
    print("Primitive : char")
  case is String:
    print("Referenced : String")
  case is Bool:
    print("Primitive : boolean")
  case is Int:
    print("Primitive : int")
    
  default:
    print("\(input) -> Something else")
  }
}
