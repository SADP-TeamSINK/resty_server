class CreateToilets < ActiveRecord::Migration
  def change
    create_table :toilets do |t|
      t.integer :building_id
      t.integer :store_id
      t.float :latitude
      t.float :longitude
      t.boolean :multipurpose
      t.integer :floor
      t.integer :sex

      t.timestamps
    end
  end
end
