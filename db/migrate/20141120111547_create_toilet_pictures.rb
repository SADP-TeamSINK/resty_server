class CreateToiletPictures < ActiveRecord::Migration
  def change
    create_table :toilet_pictures do |t|
      t.references :toilet
      t.string :path

      t.timestamps
    end
  end
end
