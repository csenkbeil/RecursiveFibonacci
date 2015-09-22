fn main() {
    println!("{}", fib(40));
}

fn fib(n: u64) -> u64 {
    match n {
        0 | 1 => n,
        n => fib(n - 1) + fib(n - 2)
    }
}
