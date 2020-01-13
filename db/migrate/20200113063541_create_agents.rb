class CreateAgents < ActiveRecord::Migration[5.2]
  def change
    create_table :agents do |t|
      t.string :name
      t.text :image
      t.string :company
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
