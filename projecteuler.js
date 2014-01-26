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

// var palindrome = function(x) {
//   var string_array = [];
//   x = x.toString();
//   string_array = x.split("");
//   for (var i = 0; i < string_array.length; i++) {
//     if (string_array[i] == string_array[string_array.length-1]) {
//       string_array.pop();
//     }
//     else {
//       return false;
//     }
//   }
//   return true;
// }

// for (var x = 999; x > 0; x--) {
//   for (var y = 999; y > 0; y--) {
//     if (palindrome(x*y) == true) {
//       console.log(x + " x " + y + " = " + x*y);
//       break;
//     }
//     // break; // this will only evaluate y = 999
//   }
//   // break; // this will only evaluate x = 999
// }

// console.log(palindrome(2*126));

////////////////////////////////////////////////////
// Problem # 5

// var smallest_multiple = function(x) {
//   var multiple = 20;
//   while (multiple > 0) {
//     if ((x % multiple) == 0 ) {
//       multiple--;
//     }
//     else {
//       return false;
//       break;
//     }
//   }
//   if (multiple == 0) {
//     return true;
//   }
// }

// for (var x = 1; x < 999999999; x++) {
//   if (smallest_multiple(x) == true ) {
//     console.log(x);
//     break;
//   }
// }

////////////////////////////////////////////////////
// Problem # 6

// var sum_square = 0
// var square_sum = 0

// for (var i = 1; i <= 100; i++) {
//   sum_square += Math.pow(i,2);
//   square_sum += i;
//   // sum_square += i*i;
//   // console.log(sum_square);
//   // return sum_square;
// }

// // for (var i=1; i <= 100; i++) {
// //   square_sum += i;
// //   // console.log(square_sum);
// //   // return square_sum * square_sum;
// // }

// // console.log(sum_square);
// // console.log(square_sum * square_sum);
// console.log(square_sum*square_sum + " - " + sum_square + " = " + parseInt(square_sum*square_sum - sum_square));

////////////////////////////////////////////////////
// Problem # 7

// var is_prime = function(x) {
//   var prime = true;
//   if (x>2 && x % 2 == 0) {
//     prime = false;
//   }
//   else {
//     for (var i=2; i<(x/2); i++) {
//       if (x % i == 0) {
//         prime = false;
//       }
//     }
//   }
//   return prime;
// }

// var first_n_prime = function(x) {
//   var counter = 0;
//   var n_prime = [];
//   for (var i=2; i < 500000; i++) {
//     if (is_prime(i) == true) {
//       n_prime.push(i);
//     }
//     if (n_prime.length == x) {
//       break;
//     }
//   }
//   return n_prime;
// }

// answer = first_n_prime(10001);
// console.log(answer[10000]);

// var isPrime = function(x) {
//   if (x === 2) {
//     return true;
//   }
//   if (x % 2 == 0) {
//     return false;
//   }
//   else {
//     for (var i = 3; i <= Math.round(Math.sqrt(x)); i += 2)
//       if (x % i == 0) {
//         return false;
//       }
//   }
//   return true;
// }

// console.log("2 " + isPrime(2))
// console.log("3 " + isPrime(3))
// console.log("4 " + isPrime(4))
// console.log("5 " + isPrime(5))
// console.log("6 " + isPrime(6))
// console.log("7 " + isPrime(7))
// console.log("8 " + isPrime(8))
// console.log("9 " + isPrime(9))
// console.log("10 " + isPrime(10))
// console.log("11 " + isPrime(11))
// console.log("12 " + isPrime(12))
// console.log("27 " + isPrime(27))
// console.log("31 " + isPrime(31))


////////////////////////////////////////////////////
// Problem # 8
// var digits = "023456089012345".split("").map(Number);
// var digits = "7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450".split("").map(Number);
// var max = 0;
// for (var i = 0; i < digits.length - 4; i++) {
//   var fiveconsecutive = digits[i]*digits[i+1]*digits[i+2]*digits[i+3]*digits[i+4];
//   if (fiveconsecutive > max ) {
//     max = fiveconsecutive;
//   }
// }


// console.log(max);

////////////////////////////////////////////////////
// Problem # 9

// var a = 0;
// var c = 0;

// for (var b = 1; b < 1000; b++) {
//   a = (500000 - 1000*b) / (1000 - b);

//   if (Math.floor(a) === a) {
//     c = 1000 - a - b;

//     break;
//   }
// }

// console.log(a,b,c);

////////////////////////////////////////////////////
// Problem # 10

var is_prime = function(x) {
  if (x === 2) {
    return true;
  }
  if (x % 2 == 0) {
    return false;
  }
  else {
    for (var i = 3; i <= Math.round(Math.sqrt(x)); i+=2) {
      if (x % i == 0) {
        return false;
      }
    }
  }
  return true;
}

var prime_sum = 0;

for (var i = 2; i < 2000001; i++) {
  if (is_prime(i) == true) {
    prime_sum += i;
  }
  // return prime_sum;
}

console.log(prime_sum);