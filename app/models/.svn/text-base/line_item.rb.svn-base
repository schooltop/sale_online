# Schema as of June 12, 2006 15:45 (schema version 7)
#
# Table name: line_items
#
#  id          :integer(11)   not null, primary key
#  product_id  :integer(11)   default(0), not null
#  order_id    :integer(11)   default(0), not null
#  quantity    :integer(11)   default(0), not null
#  total_price :integer(11)   default(0), not null
#

#START:belongs_to
class LineItem < ActiveRecord::Base
  
  belongs_to :order
  belongs_to :product
  has_many :service_tasks
  has_many :vip_records
  belongs_to :has_pay
  belongs_to :situation
#END:belongs_to
  
  def self.from_cart_item(cart_item)
    li = self.new
    li.product     = cart_item.product
    li.service_id =cart_item.product.service_id
    li.service_style_id=cart_item.product.service_style_id
    li.quantity    = cart_item.quantity
    li.price     = cart_item.product.price
    li.total_price = cart_item.price
    li.totime = cart_item.totime
    li.comfrom="网络"
    li.fromtime= Time.now
    li
  end
  
#START:belongs_to
end
#END:belongs_to
