class CreateLineItems < ActiveRecord::Migration[7.0]
  def change
    create_table :line_items, if_not_exists: true do |t|
      t.references :product, null: false, foreign_key: true
      t.belongs_to :cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
