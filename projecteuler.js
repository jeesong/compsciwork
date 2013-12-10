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

// var fibonacci = function(n) {
//   if (n == 0 || n == 1) {
//     return n;
//   }
//   else {
//     return fibonacci(n-1) + fibonacci(n-2);
//   }
// }
// var i = 0;
// var total = 0;

// while (fibonacci(i) <= 4000000) {
//   if (fibonacci(i) % 2 == 0) {
//     total += fibonacci(i);
//   }
//   i++;
// }

// console.log(total);

////////////////////////////////////////////////////
// Problem # 3

// var factors = [];
// var primes = [];
// var divisible_by = function(n) {
//   for (var i = 1; i <= n; i++) {
//     if (n % i == 0) {
//       factors.push(i);
//     }
//   }
//   return return_primes(factors);
// }

// var is_prime = function(x) {
//   var prime = true;
//   if (n > 2 && n % 2 == 0) {
//     prime = false;
//   }
//   for (var n = 2; n < x - 1; n++) {
//     if (x % n == 0) {
//       prime = false;
//     }
//   }
//   return prime;
// }

// var return_primes = function(test_array) {
//   test_array.shift();
//   for (var i = 0; i < test_array.length; i++) {
//     if (is_prime(test_array[i]) == true) {
//       primes.push(test_array[i]);
//     }
//   }
//   return primes;
// }

// console.log(divisible_by(23948));

////////////////////////////////////////////////////
// Problem # 4

var palindrome = function(x) {
  var string_array = [];
  x = x.toString();
  string_array = x.split("");
  for (var i = 0; i < string_array.length; i++) {
    if (string_array[i] == string_array[string_array.length-1]) {
      string_array.pop();
    }
    else {
      return false;
    }
  }
  return true;
}

for (var x = 999; x > 0; x--) {
  for (var y = 999; y > 0; y--) {
    if (palindrome(x*y) == true) {
      console.log(x + " x " + y + " = " + x*y);
      break;
    }
    // break; // this will only evaluate y = 999
  }
  // break; // this will only evaluate x = 999
}

// console.log(palindrome(2*126));

////////////////////////////////////////////////////
// Problem # 5