// Created By ashok varma

import Foundation

let Number  : Int = Int(readLine(stripNewline: true)!)!

if(Number % 2 != 0){
    print("Weird")
}else if (Number>=2 && Number<=5){
    print("Not Weird")
}else if (Number>=6 && Number<=20){
    print("Weird")
}else{
    print("Not Weird")
}
