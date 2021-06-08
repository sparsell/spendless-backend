class AddGoalToTotal < ActiveRecord::Migration[6.0]
  def change
    add_reference :totals, :goal, foreign_key: true
  end
end
