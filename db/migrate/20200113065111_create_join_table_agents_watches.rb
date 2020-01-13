class CreateJoinTableAgentsWatches < ActiveRecord::Migration[5.2]
  def change
    create_join_table :agents, :watches do |t|
      # t.index [:agent_id, :watch_id]
      # t.index [:watch_id, :agent_id]
    end
  end
end
