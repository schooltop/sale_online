class CreateSituations < ActiveRecord::Migration
  def self.up
    create_table :situations do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :situations
  end
end
