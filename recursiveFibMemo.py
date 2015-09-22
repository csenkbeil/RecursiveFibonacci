import sys

def memoise(fn):
    stuff = {}
    def decorated(*args):
        if args in stuff:
            return stuff[args]
        else:
            out = fn(*args)
            stuff[args] = out
            return out

    return decorated


@memoise
def fib(n):
    return n if n < 2 else fib(n - 1) + fib(n - 2)

if __name__ == '__main__':
    print fib(int(sys.argv[1]))
