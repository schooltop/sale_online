class Spa < ActiveRecord::Base
  belongs_to :company
  belongs_to :product
  belongs_to :situation
end
