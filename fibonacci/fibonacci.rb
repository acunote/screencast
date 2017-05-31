def fib(n)
  (n <= 1) ? n : (fib(n - 1) + fib(n - 2))
end

def fib_seq(n)
  (0..n).map{|x| fib(x)}.join("\n")
end

puts fib_seq(9)
