var returnDate = readLine()!.characters.split(" ").map(String.init).map{ Int($0)! }
var expectedDate = readLine()!.characters.split(" ").map(String.init).map{ Int($0)! }

var fine = 0;

if(returnDate[2] > expectedDate[2]){
    fine = 10000
} else if (returnDate[2] == expectedDate[2]){
    if (returnDate[1] > expectedDate[1]){
        fine = (returnDate[1] - expectedDate[1])*500
    } else if (returnDate[1] == expectedDate[1] && returnDate[0] > expectedDate[0]){
        fine = (returnDate[0] - expectedDate[0])*15
    }
}

print(fine)
