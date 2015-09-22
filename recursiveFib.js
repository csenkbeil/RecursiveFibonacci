var arguement = +process.argv[2];
var result = fib(arguement);
console.log(result);

function fib(n) { return n < 2 ? n : fib(n - 1) + fib(n - 2); }
