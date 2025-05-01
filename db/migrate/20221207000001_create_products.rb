class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products, if_not_exists: true do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
