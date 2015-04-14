class CreateRentCarts < ActiveRecord::Migration
  def self.up
    create_table :rent_carts do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :rent_carts
  end
end
