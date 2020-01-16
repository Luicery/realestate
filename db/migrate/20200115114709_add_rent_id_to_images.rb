class AddRentIdToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :rent_id, :integer
  end
end
