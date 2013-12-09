//// Problem #1
// var sum_array = [];
// for (var i = 1; i < 1000; i++) {
//   if (i % 15 == 0) {
//     sum_array.push(i);
//   }
//   else if (i % 5 == 0) {
//     sum_array.push(i);
//   }
//   else if (i % 3 == 0) {
//     sum_array.push(i);
//   }
// }

// var total = 0;
// for (var i = 0; i < sum_array.length; i++) {
//   total += sum_array[i];
// }

// console.log(total);

// var better_total = 0;
// for (var i = 0; i < 1000; i++) {
//   if (i % 5 == 0 || i % 3 ==0) {
//     better_total += i;
//   }
// }

// console.log(better_total);
////////////////////////////////////////////////////
// Problem # 2

var fibonacci = function(n) {
  if (n == 0 || n == 1) {
    return n;
  }
  else {
    return fibonacci(n-1) + fibonacci(n-2);
  }
}
var i = 0;
var total = 0;

while (fibonacci(i) <= 4000000) {
  if (fibonacci(i) % 2 == 0) {
    total += fibonacci(i);
  }
  i++;
}

console.log(total);

////////////////////////////////////////////////////
// Problem # 3

