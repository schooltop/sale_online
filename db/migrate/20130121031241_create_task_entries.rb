class CreateTaskEntries < ActiveRecord::Migration
  def self.up
    create_table :task_entries do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :task_entries
  end
end
