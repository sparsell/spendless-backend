class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.goal_amount :integer
      t.description :string

      t.timestamps
    end
  end
end
