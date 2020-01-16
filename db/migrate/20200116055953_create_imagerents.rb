class CreateImagerents < ActiveRecord::Migration[5.2]
  def change
    create_table :imagerents do |t|
      t.text :image

      t.timestamps
    end
  end
end
