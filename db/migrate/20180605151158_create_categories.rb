class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.decimal :limit
      t.integer :budget_id

      t.timestamps
    end
  end
end
