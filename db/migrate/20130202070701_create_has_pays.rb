class CreateHasPays < ActiveRecord::Migration
  def self.up
    create_table :has_pays do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :has_pays
  end
end
