class CreateRents < ActiveRecord::Migration[5.2]
  def change
    create_table :rents do |t|
      t.string :address
      t.string :price
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :parking
      t.string :title
      t.text :description
      t.integer :area

      t.timestamps
    end
  end
end
