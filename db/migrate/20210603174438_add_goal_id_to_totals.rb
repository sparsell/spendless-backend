class AddGoalIdToTotals < ActiveRecord::Migration[6.0]
  def change
    add_column :totals, :goal_id, :integer
  end
end
