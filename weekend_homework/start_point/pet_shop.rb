def get_Pet_shop_name(petshop_name)
  return petshop_name[:name]
end

def total_cash(register)
  money = register[:admin][:total_cash]
  return money
end

def add_or_remove_cash_add(add_money, amount_of_money)
    add_money[:admin][:total_cash] += amount_of_money
end

def add_or_remove_cash_remove(remove_money, amount_of_money)
  remove_money[:admin][:total_cash] -= amount_of_money
end

def pets_sold(sold)
  return sold[:admin][:pets_sold]
end

def total_cash(cash)
  register = cash[:admin][:total_cash]
  return register
end

def stock_amount(stock)
  return stock[:pets].count
end

def pets_by_breed(pet, pet_breed)
  mactches = []
  for breed in pet[:pets]
    matches << pet if (pet[:breed] == breed)
  end
    return matches
end


def find_pets_by_name(pets, pet_name)
  match = nil
  for pet in pet_shop[:pets]
    match = pet if(pet[::name] == pet_name)
  end
  return match
end

def remove_pet_by_name(pet, pet_name)
  remove_pet = remove_pet_by_name(pet, pet_name)
  pet_shop[:pets].delete(remove_pet)
end

def add_pet_to_stock(stock, pet)
  stock[:pets] << pet
end

def costumer_cash(cash)
  return cash[:cash]
end

def remove_costumer_cash(costumer, removed_cash)
  costumer[:cash] -= removed_cash
end

def costumer_pet_count(costumer_pets_amount)
  return costumer_pets_amount[:pets].count
end

def add_pet_to_costumer(costumer, added_pet)
  return costumer[:pet] << pet
end

def customer_can_afford_pet(customer_budget, pet_price)
  return customer_budget[:cash] >= pet_price[:price]
end
