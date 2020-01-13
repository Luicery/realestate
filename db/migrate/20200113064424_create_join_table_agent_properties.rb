class CreateJoinTableAgentProperties < ActiveRecord::Migration[5.2]
  def change
    create_join_table :agents, :properties do |t|
      # t.index [:agent_id, :property_id]
      # t.index [:property_id, :agent_id]
    end
  end
end
