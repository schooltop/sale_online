class CreateMyares < ActiveRecord::Migration
  def self.up
    create_table :myares do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :myares
  end
end
