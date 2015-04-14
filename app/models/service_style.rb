class ServiceStyle < ActiveRecord::Base
  has_many :vip_services
  has_many :services
  has_many :products
  
  def self.all_display
  ServiceStyle.find(:all, :conditions=>"hide=1")
  end
end
