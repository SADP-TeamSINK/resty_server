class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.references :toilet
      t.boolean :washlet

      t.timestamps
    end

    add_index :rooms, [:washlet]
  end
end
