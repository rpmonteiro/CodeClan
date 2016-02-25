def add_one(ary)
  new_ary = []
  for number in ary 
    new_ary << number + 1
  end
  return new_ary
end

def multiply_each_item_by_two(ary)
  new_ary = []
  for number in ary
    new_ary << number * 2
  end
  return new_ary
end

def map(items)
  result = []
  for item in items
    result << yield(item)
  end
  return result
end