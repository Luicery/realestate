class CreateJoinTableUsersWatches < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :watches do |t|
      # t.index [:user_id, :watch_id]
      # t.index [:watch_id, :user_id]
    end
  end
end
