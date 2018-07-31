class CreatePlanes < ActiveRecord::Migration[5.2]
  def change
    create_table :planes do |t|
      t.string :name
      t.integer :rows
      t.integer :columns
      t.timestamps
    end
  end
end
