function main() {
    var arr = [];
    for(arr_i = 0; arr_i < 6; arr_i++){
       arr[arr_i] = readLine().split(' ');
       arr[arr_i] = arr[arr_i].map(Number);
    }

    for (i = 0; i < arr.length; i++) {
        for (j = 0; j < arr[i].length; j++) {
            if (arr[i][j] < -9 || arr[i][j] > 9) {
                return;
            }
        }

    }

    var sum, i, j, a, b, c, d, e, f, g, total;

    for (i = 0; i < arr.length - 2; i++) {
        for (j = 0; j < arr[i].length - 2; j++) {
            a = arr[i][j];
            b = arr[i][j+1];
            c = arr[i][j+2];
            d = arr[i+1][j+1];
            e = arr[i+2][j];
            f = arr[i+2][j+1];
            g = arr[i+2][j+2];

            sum = typeof sum == 'undefined' ? -63 : sum;
            total = a + b + c + d + e + f + g;
            sum = total > sum ? total : sum;
        }
    }

    console.log(sum);
}
