let validationArray: Array<Character> = [" ","!","[",",","?",".","\\","_","\'","@","+","]"]

func shouldSplit(char: Character ) -> Bool{
    for current in validationArray{
        if (current==char) { return true }
    }
    return false
}

var array = readLine()!.characters.split{ shouldSplit($0) }.map(String.init)
print(array.count)
print(array.joinWithSeparator("\n"));
