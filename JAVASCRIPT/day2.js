function processData(input) {
    var data = input.split('\n');
    var M = Number(data[0]);
    var tip = (M * Number(data[1])) / 100;
    var tax = (M * Number(data[2])) / 100;
    var total = (M + tip + tax).toFixed(0);
    console.log("The final price of the meal is $" + total + ".");
}