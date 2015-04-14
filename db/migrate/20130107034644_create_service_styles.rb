class CreateServiceStyles < ActiveRecord::Migration
  def self.up
    create_table :service_styles do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :service_styles
  end
end
