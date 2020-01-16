class CreateJoinTableRentsWatches < ActiveRecord::Migration[5.2]
  def change
    create_join_table :rents, :watches do |t|
      # t.index [:rent_id, :watch_id]
      # t.index [:watch_id, :rent_id]
    end
  end
end
