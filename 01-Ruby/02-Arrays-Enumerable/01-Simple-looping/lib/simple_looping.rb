def sum_with_while(min,max)
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a while..end structur e
  i = min
  sum = 0
  while i <= max
    sum += i
    i += 1
  end
  sum
end

puts sum_with_while(1,100)

def sum_with_for(min,max)
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a for..end structure
num = min
sum = 0
  for num in (min..max)
  sum = num + sum
  num += 1
  end
sum
end

puts sum_with_for(1,3)

def sum_recursive(min,max)
  #TODO (optional): return the sum of the integers between min and max
  #CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself

  return sum if min == max

end

