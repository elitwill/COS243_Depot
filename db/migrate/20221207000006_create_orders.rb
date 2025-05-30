class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders, if_not_exists: true do |t|
      t.string :name
      t.text :address
      t.string :email
      t.integer :pay_type

      t.timestamps
    end
  end
end
