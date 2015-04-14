class VipDetail < ActiveRecord::Base
  belongs_to :vip_style
  belongs_to :vip_service
end
