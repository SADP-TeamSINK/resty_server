class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.float :latitude
      t.float :laongitude
      t.string :name
      t.integer :floor_size

      t.timestamps
    end
  end
end
