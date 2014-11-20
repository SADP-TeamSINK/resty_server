class CreateRoomPictures < ActiveRecord::Migration
  def change
    create_table :room_pictures do |t|
      t.references :room
      t.string :path

      t.timestamps
    end
  end
end
