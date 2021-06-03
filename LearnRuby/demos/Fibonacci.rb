#A simple Fibonacci Generator using a for loop
def fibonacci(n)
    n -= 2
    s = [0, 1]

    for i in 1..n
        s.push s.at(s.length - 1) + s.at(s.length - 2)
    end

    return s
end

fibonacci(5)