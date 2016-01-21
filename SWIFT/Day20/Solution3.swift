func shouldSplit(char: Character ) -> Bool{
    let validationArray: Array<Character> = [" ","!","[",",","?",".","\\","_","\'","@","+","]"]
    var result = false
    validationArray.forEach{ result = (result || ($0==char)) }
    return result
}
var array = readLine()!.characters.split{ shouldSplit($0) }.map(String.init)
print(array.count)
print(array.joinWithSeparator("\n"));
