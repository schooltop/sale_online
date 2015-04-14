class CartItem
  
  attr_reader :product, :quantity  ,:totime
  
  def initialize(product,i,t)
    @product = product
    @quantity = i.to_i   
    @totime=t 
  end
  
  def niums_quantity
    @quantity -= 1
  end
  
  def increment_quantity
    @quantity += 1
  end  
  
  def add_quantity(i)
    @quantity += i.to_i
  end  
  
  def title
    @product.title
  end
  
  def product
    @product
  end
  
  def price
    @product.price * @quantity
  end
end