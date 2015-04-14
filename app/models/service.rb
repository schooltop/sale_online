class Service < ActiveRecord::Base
  has_many :products
  belongs_to :service_style
  #has_many :vip_details
end
