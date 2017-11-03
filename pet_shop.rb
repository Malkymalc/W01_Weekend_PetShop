def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  shop[:admin][:total_cash] += amount
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, pets_sold_int)
  shop[:admin][:pets_sold] += pets_sold_int
end

def stock_count(shop)
  return shop[:pets].length
end

def pets_by_breed(shop, breed_selected)
  pets_of_breed_array = []

  for pets in shop[:pets]
    pets_of_breed_array.push(pets) if pets[:breed] == breed_selected
  end

  return pets_of_breed_array
end

def find_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    return pet if pet[:name] == pet_name
  end

  return nil
end

def remove_pet_by_name(shop, pet_name)
  pets_array = shop[:pets]
  pets_array.delete_if { |pet| pet[:name] == pet_name }
end

def add_pet_to_stock(shop, new_pet)
  pets_array = shop[:pets]
  pets_array.push(new_pet)
end

def customer_pet_count(customer)
  return customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end
