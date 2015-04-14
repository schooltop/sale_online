class VipRecord < ActiveRecord::Base
  belongs_to :service_style
  belongs_to :user
  belongs_to :vip_service
  belongs_to :iputuser,:class_name=>"users",:foreign_key=>"input_user_id"
  belongs_to :order
  belongs_to :line_item
end
