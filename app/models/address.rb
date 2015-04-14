class Address < ActiveRecord::Base
  belongs_to :area
  validates_presence_of     :phone
  validates_length_of       :phone,    :minimum => 11
  
  def total_name
    self.area.total_name.to_s + self.desc_address.to_s rescue ""
  end
end
