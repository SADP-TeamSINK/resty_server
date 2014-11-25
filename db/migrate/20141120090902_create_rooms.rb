class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.references :toilet
      t.boolean :washlet
      t.boolean :status

      t.timestamps
    end

    add_index :rooms, [:washlet, :status]
  end
end
