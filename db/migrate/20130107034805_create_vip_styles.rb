class CreateVipStyles < ActiveRecord::Migration
  def self.up
    create_table :vip_styles do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :vip_styles
  end
end
