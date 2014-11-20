class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.references :category
      t.references :company
      t.string :path

      t.timestamps
    end
  end
end
