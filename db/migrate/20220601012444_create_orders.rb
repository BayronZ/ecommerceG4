class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.string :number
      t.decimal :total
      t.string :state

      t.timestamps
    end
  end
end
