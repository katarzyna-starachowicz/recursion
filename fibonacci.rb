def fibs(n) # with iteration
  a = 0
  b = 1
  numbers = [0, 1]
  (n - 2).times do
    b = a + b
    a = b - a
    numbers << b
  end
  if n == 1
    0
  elsif n < 1
    "n must be bigger than 0"    
  else
    numbers
  end
end