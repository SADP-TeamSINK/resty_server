class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.references :toilet
      t.boolean :available
      t.boolean :washlet
      t.boolean :multipurpose

      t.timestamps
    end

    add_index :rooms, [:washlet, :available, :multipurpose]
  end
end
