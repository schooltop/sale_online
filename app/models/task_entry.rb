class TaskEntry < ActiveRecord::Base
  belongs_to :service_task
  belongs_to :company
  belongs_to :work
end
