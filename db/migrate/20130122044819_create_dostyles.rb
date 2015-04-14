class CreateDostyles < ActiveRecord::Migration
  def self.up
    create_table :dostyles do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :dostyles
  end
end
