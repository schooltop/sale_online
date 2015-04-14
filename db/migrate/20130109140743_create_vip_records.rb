class CreateVipRecords < ActiveRecord::Migration
  def self.up
    create_table :vip_records do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :vip_records
  end
end
