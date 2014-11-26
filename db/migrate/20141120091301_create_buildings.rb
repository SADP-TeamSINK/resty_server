class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.decimal :latitude, :precision => 9, :scale => 6
      t.decimal :longitude, :precision => 9, :scale => 6
      t.string :name
      t.integer :floor_size

      t.timestamps
    end
  end
end
