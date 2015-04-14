class HuayuServiceStyle < ActiveRecord::Base
  has_many :vip_services
  has_many :services
  has_many :products
  
  def self.all_display
  HuayuServiceStyle.find(:all, :conditions=>"hide=0")
  end
end
