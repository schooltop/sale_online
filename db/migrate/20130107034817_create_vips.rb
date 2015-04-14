class CreateVips < ActiveRecord::Migration
  def self.up
    create_table :vips do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :vips
  end
end
