class AddTotalToSpendlessAmount < ActiveRecord::Migration[6.0]
  def change
    add_reference :spendless_amounts, :total, foreign_key: true
  end
end
