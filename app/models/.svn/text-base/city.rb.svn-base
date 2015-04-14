class City < ActiveRecord::Base
  #has_many :areas
  def areas
    Area.find(:all,:conditions=>"city_code = #{self.code} and province_code = #{self.province_code}")
  end
end
