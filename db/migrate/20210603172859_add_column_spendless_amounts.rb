class AddColumnSpendlessAmounts < ActiveRecord::Migration[6.0]
  def change
    add_column :spendless_amounts, :total_id, :integer
  end
end
