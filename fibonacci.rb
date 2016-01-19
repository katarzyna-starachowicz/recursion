# Write a method #fibs which takes a number 
# and returns that many members of the fibonacci sequence. 
# Use iteration for this solution.

def fibs(n)
  a = 0
  b = 1
  numbers = [1]
  (n - 1).times do
    b = a + b
    a = b - a
    numbers << b
  end
  if n < 1
    "n must be greater than 0"    
  else
    numbers
  end
end

# --------------------------------------------
# Now write another method #fibs_rec 
# which solves the same problem recursively.

def fibs_rec(n, numbers = [], a = 0, b = 1)
  return (numbers << [1] * n) if n <= 0
  numbers << b
  b = a + b
  a = b - a
  fibs_rec(n - 1, numbers, a, b)
end

#shorter but stolen from: https://github.com/RobotOptimist/rec_ex/blob/master/fibs.rb
def fibs_rec_stolen(n, x = 1, y = 2, fib = [1])
  return fib if fib.size >= n
  fib << y
  fibs_rec_stolen(n, fib[-1], (fib[-1] + x), fib)
end

# only n!
def fib_rec(n)
  if n <= 0
    return "n must be greater than 0"  
  elsif n == 1
    return 1
  else    
    fib_rec(n - 1) + fib_rec(n - 2)
  end
end