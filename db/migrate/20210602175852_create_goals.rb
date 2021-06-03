class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.integer :goal_amount
      t.string :description

      t.timestamps
    end
  end
end
