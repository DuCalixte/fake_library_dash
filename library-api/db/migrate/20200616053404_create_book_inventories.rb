class CreateBookInventories < ActiveRecord::Migration[6.0]
  def change
    create_table :book_inventories, id: :uuid do |t|
      t.string :book_id
      t.integer :status
      t.boolean :is_checkout

      t.timestamps
    end
  end
end
