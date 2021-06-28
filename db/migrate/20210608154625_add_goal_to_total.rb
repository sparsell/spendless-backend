class AddGoalToTotal < ActiveRecord::Migration[6.0]
  def change
    add_reference :totals, :goal, null: false, foreign_key: true
  end
end
