function main() {
    var N = parseInt(readLine());
    var output;

    if (N % 2 == 0) {
        if (N >= 2 && N <= 5) {
            output = "Not Weird";
        } else if (N >= 6 && N <= 20) {
            output = "Weird";
        } else {
            output = "Not Weird";
        }
    } else {
        output = "Weird";
    }

    console.log(output);
}
