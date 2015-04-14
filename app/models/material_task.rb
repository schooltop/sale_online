class MaterialTask < ActiveRecord::Base
  belongs_to :service_task
  belongs_to :task_entry
end
 