class Situation < ActiveRecord::Base
  has_many :orders
  has_many :line_itemses
  has_many :spas
  has_many :service_tasks
end
