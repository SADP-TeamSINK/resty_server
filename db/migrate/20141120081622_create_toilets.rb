class CreateToilets < ActiveRecord::Migration
  def change
    create_table :toilets do |t|
      t.references :building
      t.integer :store_id
      t.float :latitude
      t.float :longitude
      t.boolean :multipurpose
      t.integer :floor
      t.integer :sex

      t.timestamps
    end

    add_index :toilets, [:longitude, :latitude]

  end
end
