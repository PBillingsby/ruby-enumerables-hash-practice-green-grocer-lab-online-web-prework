def consolidate_cart(cart)
  # code here
  new_hash = {}
  cart.each do |item_arr| # for each item in the cart
    item_arr.each do |k, v| # for each key and value in item of cart
      new_hash[k] ||= v # which items are duplicated
      new_hash[k][:count] ? new_hash[k][:count] += 1 : new_hash[k][:count] = 1
    end
  end
  new_hash  
end

def apply_coupons(cart, coupons)
  # code here
  coupon = coupons.find { |coupon| coupon[:item] }
  cart.each |n| 
    if n.include?(coupon)
      puts "#{n} W/COUPON"
  
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
