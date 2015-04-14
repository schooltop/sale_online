class CreateSpas < ActiveRecord::Migration
  def self.up
    create_table :spas do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :spas
  end
end
