class CreateJoinTableAgentsRents < ActiveRecord::Migration[5.2]
  def change
    create_join_table :agents, :rents do |t|
      # t.index [:agent_id, :rent_id]
      # t.index [:rent_id, :agent_id]
    end
  end
end
