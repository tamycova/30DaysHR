function main() {
    var n = parseInt(readLine());
    var s = "";

    for (i = 1; i <= n; i++) {
        for (j = 0; j < n - i; j++) {
            s += " ";
        }
        for (k = 0; k < i; k++ ) {
            s += "#";
        }
        if (i != n) {
            s += "\n";
        }
    }

    console.log(s);
}
