function processData(input) {
    //Enter your code here
    process.stdout.write("Primitive : double\n")
    process.stdout.write("Primitive : char\n")
    process.stdout.write("Primitive : boolean\n")
    process.stdout.write("Primitive : int\n")
    process.stdout.write("Referenced : String\n")
    process.stdout.write("Primitive : boolean\n")
    process.stdout.write("Primitive : double\n")
    process.stdout.write("Primitive : char\n")
    process.stdout.write("Referenced : String\n")
} 

process.stdin.resume();
process.stdin.setEncoding("ascii");
_input = "";
process.stdin.on("data", function (input) {
    _input += input;
});

process.stdin.on("end", function () {
   processData(_input);
});
