def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  for item in person[:favourites][:snacks]
    return true if food == item
  end
  return false
end

def add_friend(person, friend_name)
  person[:friends].push(friend_name)
  # We don't need to return the length, we can do that
  # on the test function
  return person[:friends].length
end

def remove_friend(person, friend_name)
  person[:friends].delete(friend_name)
  return person[:friends].length
end

def total_money(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

def lend_money(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
  # we don't need to return that, function doesn't need
  # to return any output
  return [lender[:monies], lendee[:monies]]
end

# We could have used two for loops to return everthing in 1 array

def global_food(people)
  food_array = []
  for person in people
    food_array.push(person[:favourites][:snacks])
    #food_array.concat(person[:favourites][:snacks])
    # if we want to return only one array
  end
  return food_array
end

# We might wanted to return the hash of the people
# not just the hash

def loners(people)
  lonely_array = []
  for person in people
    if person[:friends] == []
      lonely_array.push(person[:name])
    end
  end
  return lonely_array
end
