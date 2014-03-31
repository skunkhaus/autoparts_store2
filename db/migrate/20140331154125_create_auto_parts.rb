class CreateAutoParts < ActiveRecord::Migration
  def change
    create_table :auto_parts do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.string :vehicle_make
      t.string :vehicle_model

      t.timestamps
    end
  end
end
