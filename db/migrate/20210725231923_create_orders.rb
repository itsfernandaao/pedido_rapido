class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :client
      t.integer :table
      t.integer :status, default: 1
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
