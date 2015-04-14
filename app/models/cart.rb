class Cart
  
  attr_reader :items
  
  def initialize
    @items = []
  end
  

  def add_product(product,niums,i,t)
    current_item = @items.find {|item| item.product == product}
    if current_item
      if niums&&niums.to_i==1
        current_item.niums_quantity
      elsif i&&i.to_i>0
        current_item.add_quantity(i)
      else
        current_item.increment_quantity
      end 
    else
      if i&&i.to_i>0
      current_item = CartItem.new(product,i,t)
      else
      current_item = CartItem.new(product,1,t)  
      end
      @items << current_item
    end
    current_item
  end

  #START:total_items
  def total_items
    @items.sum { |item| item.quantity }
  end
  #END:total_items
  
  def total_price
    @items.sum { |item| item.price }
  end
end
