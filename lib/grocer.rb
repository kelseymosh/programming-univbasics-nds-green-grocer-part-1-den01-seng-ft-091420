require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each do |item_info|
    if item_info[:item] == name
      return item_info
    end
  end
  nil
end


def consolidate_cart(cart)
  new_cart = []
  counter = 0
    while counter < cart.length
      new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
      if new_cart_item != nil
        cart[counter][:item ]+=1
      counter += 1
    end
  end
end
