class CreateSpendlessAmounts < ActiveRecord::Migration[6.0]
  def change
    create_table :spendless_amounts do |t|
      t.integer :amount

      t.timestamps
    end
  end
end
