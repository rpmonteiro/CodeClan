# Used the splat "*" so all arguments are stored
# in an Array thus making this function accept as 
# many arrays as we want
# 

def sum_of_arrays_length(*arys)
  arys.inject(0) { |sum, arys| sum + arys.length }
end

# Here I sanitize a bit the input so my code doesn't break
# that easily when someone inputs an array with components
# other than fixnums.
# Does a simple is_class check and procedes if it's a Fixnum
# 

def sum_of_array_contents(ary)
  total = 0

  ary.each do |i|
    total += i if i.class == Fixnum
  end

  return total
end

def has_item(item, ary)
  ary.include?(item)
end

# There's nowhere to hide, Tony. This function will look
# for you mercilessly.
# 

def wheres_tony(hash)
  "Tony" if hash.keys.include?('Tony') else hash.keys[0]
end

def all_capitals(hash)
  capitals = []
  hash.each{ |key, value| capitals << value[:capital] }
  return capitals
end