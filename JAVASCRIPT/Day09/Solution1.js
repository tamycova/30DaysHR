function processData(input) {
  var data = input.split(' ');
  num1 = parseInt(data[0]);
  num2 = parseInt(data[1]);
  min = Math.min(num1, num2);
  max = Math.max(num1, num2);

  // The smallest number larger than the minimum after
  // recurcively subtractiong the min from the max (optimisation)
  limit = min + (max % min);
  gcd = function(x, y) {
    if (x === 0 || y === 0)
      console.log(Math.max(x, y));
    else if (x > y) {
      gcd(x % y, y);
    } else {
      gcd(x, y % x);
    }
  };
  gcd(min, limit);
}