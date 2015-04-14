class CreateServiceTasks < ActiveRecord::Migration
  def self.up
    create_table :service_tasks do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :service_tasks
  end
end
