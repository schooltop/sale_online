class CreateTestmes < ActiveRecord::Migration
  def self.up
    create_table :testmes do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :testmes
  end
end
