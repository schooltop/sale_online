class CreateMaterialTasks < ActiveRecord::Migration
  def self.up
    create_table :material_tasks do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :material_tasks
  end
end
