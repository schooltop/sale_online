class Dept < ActiveRecord::Base
  has_many :events
  has_many :event_series
  has_and_belongs_to_many :users
  has_many :services
  has_many :works
  belongs_to :company
  def dept_price
    t=0
    for service in self.services
      t = t+service.total_price
    end
    return t
  end
  
end
