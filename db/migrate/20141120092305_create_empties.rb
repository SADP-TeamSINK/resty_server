class CreateEmpties < ActiveRecord::Migration
  def change
    create_table :empties do |t|
      t.references :room
      t.boolean :status

      t.timestamps
    end

    add_index :empties, [:status]
  end
end
