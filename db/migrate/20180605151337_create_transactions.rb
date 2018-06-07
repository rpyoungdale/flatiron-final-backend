class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.string :merchant
      t.decimal :amount
      t.integer :category_id

      t.timestamps
    end
  end
end
