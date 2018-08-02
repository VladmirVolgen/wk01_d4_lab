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
  return [lender[:monies], lendee[:monies]]
end

def global_food(people)
  food_array = []
  for person in people
    food_array.push(person[:favourites][:snacks])
  end
  return food_array
end

def loners(people)
  lonely_array = []
  for person in people
    if person[:friends] == []
      lonely_array.push(person[:name])
    end
  end
  return lonely_array
end
