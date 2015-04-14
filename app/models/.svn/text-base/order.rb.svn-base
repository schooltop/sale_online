# Schema as of June 12, 2006 15:45 (schema version 7)
#
# Table name: orders
#
#  id       :integer(11)   not null, primary key
#  name     :string(255)   
#  address  :text          
#  email    :string(255)   
#  pay_type :string(10)    
#

#START:validate
#START:select
#START:has_many
class Order < ActiveRecord::Base
#END:select
#END:validate
  belongs_to :user
  has_many :line_items
  has_many :service_tasks
  has_many :vip_records
  belongs_to :has_pay
  belongs_to :state
#END:has_many

  #START:select  
  PAYMENT_TYPES = [   
    [ "VIP卡", "VIP卡" ],
    [ "现金", "现金" ],
    [ "刷卡", "刷卡" ],
    [ "签单", "签单" ]
  ]
  
  # ...
  #END:select

  #START:validate
  #validates_presence_of :name, :email, :pay_type ,:tel #,:address
  #validates_inclusion_of :pay_type, :in => PAYMENT_TYPES.map {|disp, value| value}
  
  # ...
  #END:validate

  #START:add_line_items_from_cart
  def add_line_items_from_cart(cart)
    cart.items.each do |item|
      li = LineItem.from_cart_item(item)
      line_items << li 
    end 
  end 
  #END:add_line_items_from_cart
  
  def service_style(style_id)
    line_items=[]
    for item in self.line_items
      if item.product.service.service_style_id==style_id
        line_items<<item
      end
    end
    return line_items
  end

  def pay_situation
    if self.has_pay_id==1
      return "已完成"
    else
      return " <font color=’#ff0000’>未付款 </font>"
    end
  end
#START:has_many 
end
#END:has_many
