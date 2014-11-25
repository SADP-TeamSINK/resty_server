class CreateToilets < ActiveRecord::Migration
  def change
    create_table :toilets do |t|
      t.references :building
      t.integer :store_id
      t.decimal :latitude, :precision => 9, :scale => 6
      t.decimal :longitude, :precision => 9, :scale => 6
      t.boolean :multipurpose
      t.integer :floor
      t.integer :sex

      t.timestamps
    end

    add_index :toilets, [:longitude, :latitude]

  end
end
