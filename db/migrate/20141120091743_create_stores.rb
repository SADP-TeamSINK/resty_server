class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.references :category

      t.timestamps
    end

    add_index :stores, [:name]
  end
end
