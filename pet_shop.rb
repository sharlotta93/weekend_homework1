def pet_shop_name(name)
  name[:name]
end

def total_cash(sum)
  sum[:admin][:total_cash]
end

def add_or_remove_cash(sum, cash)
  sum[:admin][:total_cash] += cash
end

def pets_sold(shop)
  shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, number_of_pets_sold)
  shop[:admin][:pets_sold] += number_of_pets_sold
end

def stock_count(shop)
  shop[:pets].length
end

def pets_by_breed(pet_shop, name)
  total = Array.new()
  for pet in pet_shop[:pets]
    if pet[:breed] == name
      total << pet
    end
  end
  return total
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
    return nil
end

def remove_pet_by_name(pet_shop, name)
  position = 0
  for pet in pet_shop[:pets]
      pet_shop[:pets].delete_at(position) if pet[:name] == name
      position += 1
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end

def customer_cash(customer)
  customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer)
  customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

def customer_can_afford_pet(customer, pet)
  if customer[:cash] >= pet[:price]
    return true
  end
  return false
end
