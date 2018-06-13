class CreateBudgets < ActiveRecord::Migration[5.1]
  def change
    create_table :budgets do |t|
      t.integer :user_id
      t.decimal :balance
      t.string :month
      t.string :year

      t.timestamps
    end
  end
end
