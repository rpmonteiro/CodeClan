# 1. For a given person, return their favourite tv show
# 2. For a given person, check if they like a particular food
# 3. Allow a new friend to be added to a given person
# 4. Allow a friend to be removed from a given person
# 5. Find the total of everyone's money
# 6. For two given people, allow the first person to loan a given value of money to the other
# 7. Find the set of everyone's favourite food joined together
# 8. Find people with no friends

# INSANE
# Find the people who have the same favourite tv show
# 
# 
# 
require 'active_support/all'

def favorite_tv_show(person)
  return person[:favourites][:tv_show]
end

#returns true if it finds, else return false
#
def person_likes_certain_food?(person, food)

  return person[:favourites][:things_to_eat].include?(food)
end

def make_new_friends(person, *new_friends)
  (person[:friends] << new_friends).flatten!
  return person[:friends]
end

def remove_friend(person, *friends)
  friends.each do |victim|
    person[:friends].delete(victim)
  end
end

def total_money(people)
  count = 0

  people.each do |person|
    count += person[:monies]
  end

  return count
end

def lend_money(lender, receiver, amount)
  if lender[:monies] >= amount
    lender[:monies] -= amount
    receiver[:monies] += amount
    return true
  end
  return false
end

def everyones_favourite_food(people)
  all_foods = []
  people.each do |person|
     all_foods << person[:favourites][:things_to_eat]
  end
  return all_foods.flatten!
end

def forever_alone(people)
  forever_alones = []
  people.each do |person|
    if person[:friends].length == 0
      forever_alones << person[:name] 
    end
  end
  return forever_alones
end






