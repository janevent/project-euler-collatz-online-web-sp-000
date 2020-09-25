def even_next(n)
  n/2
end

def odd_next(n)
  (n*3) +1
end

def next_value(n)
  if n % 2 == 0 
    return even_next(n)
  else 
    return odd_next(n)
  end
end

def collatz(n)
  array = []
  i = n 
 
  while i >= 1 
    array.push(i) 
    #puts i
    break if i === 1
    i = next_value(i)
  end
  array
end

def longest_collatz
  start = 999999
  currentArray = []
  maxArray = []
  maxStart = start
  until start < 800000 
    currentArray = collatz(start)
    if maxArray.length < currentArray.length 
      maxArray = currentArray 
      maxStart = start
    end
    start-=1
  end
  maxStart
end