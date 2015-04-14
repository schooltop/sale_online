class CreateVipconsumnos < ActiveRecord::Migration
  def self.up
    create_table :vipconsumnos do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :vipconsumnos
  end
end
