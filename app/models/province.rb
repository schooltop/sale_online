class Province < ActiveRecord::Base
#  has_many :cities
  def cities
    City.find(:all,:conditions=>"province_code = #{self.code}")
  end
end
