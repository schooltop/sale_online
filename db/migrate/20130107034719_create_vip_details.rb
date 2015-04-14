class CreateVipDetails < ActiveRecord::Migration
  def self.up
    create_table :vip_details do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :vip_details
  end
end
