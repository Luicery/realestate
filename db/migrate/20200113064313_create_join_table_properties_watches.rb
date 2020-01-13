class CreateJoinTablePropertiesWatches < ActiveRecord::Migration[5.2]
  def change
    create_join_table :properties, :watches do |t|
      # t.index [:property_id, :watch_id]
      # t.index [:watch_id, :property_id]
    end
  end
end
