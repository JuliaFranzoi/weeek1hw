def pet_shop_name(pet_shop)
  return pet_shop[:name]
end


def total_cash(hash)
  return hash[:admin][:total_cash]       
end 



def add_or_remove_cash(pet_shop, number)
   pet_shop[:admin][:total_cash] += number
end 

def add_or_remove_cash__remove()
    add_or_remove_cash(@pet_shop,-10)   
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end


def increase_pets_sold(pet_shop,number)
  pet_shop[:admin][:pets_sold] += number
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, s)
  lst_pets=[]
  for pets in pet_shop[:pets]
    if pets[:breed]==s
       lst_pets.push(s)
    end
  end
  return lst_pets 
end  

def find_pet_by_name(pet_shop, name)
  for pets in pet_shop[:pets]
    if pets[:name] == name
      return pets
    end       
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
    for pets in pet_shop[:pets]
      if pets[:name] == name
        pet_shop[:pets].delete(pets)
      end       
    end
    return nil
end


def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push({})
end


def customer_pet_count(customers)
  return customers[:pets].count 
end  
    
def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end  



def customer_can_afford_pet(customer, new_pet)
  price = new_pet[:price]
  if customer[:cash] > price
    return true
  else
    return false
  end    
end


def sell_pet_to_customer(pet_shop, pet, customer) 
  if customer_can_afford_pet(customer, pet)
    add_pet_to_customer(customer, pet)   
    add_or_remove_cash(pet_shop, 900)
    remove_pet_by_name(pet_shop, pet)
    increase_pets_sold(pet_shop,1)
  else
    return
  end  
end


      
 

