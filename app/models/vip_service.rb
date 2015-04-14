class VipService < ActiveRecord::Base
  has_many :vip_details
  belongs_to :service_style
  has_many :vip_records
  # belongs_to :vip_style
end
