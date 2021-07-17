class AddDescriptionToSpendlessAmount < ActiveRecord::Migration[6.0]
  def change
    add_column :spendless_amounts, :description, :string
  end
end
