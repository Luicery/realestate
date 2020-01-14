class AddAgentIdToWatches < ActiveRecord::Migration[5.2]
  def change
    add_column :watches, :agent_id, :integer
  end
end
