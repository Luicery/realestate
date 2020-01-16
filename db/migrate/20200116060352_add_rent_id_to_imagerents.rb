class AddRentIdToImagerents < ActiveRecord::Migration[5.2]
  def change
    add_column :imagerents, :rent_id, :integer
  end
end
