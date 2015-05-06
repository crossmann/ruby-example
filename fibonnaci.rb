# implement fibonacci function in Ruby

def fibonacci(max)
  i1, i2 = 1, 1
  while i1<=max
    yield i1
    i1, i2 = i2, i1+i2
  end
end

fibonacci(10) { |f| print f, "\n " }