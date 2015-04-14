class CreateVipServices < ActiveRecord::Migration
  def self.up
    create_table :vip_services do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :vip_services
  end
end
