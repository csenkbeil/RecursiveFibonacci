var arguement = +process.argv[2];
var fib = memoiser([0, 1], function (recur, n) {
    return recur(n - 1) + recur(n - 2);
});

var result = fib(arguement);
console.log(result);


function memoiser (memo, formula) {
    var recur = function (n) {
        var result = memo[n];
        if (typeof result !== 'number') {
            result = formula(recur, n);
            memo[n] = result;
        }
        return result;
    };
    return recur;
};
