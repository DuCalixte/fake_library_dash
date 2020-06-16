class CreateBookLists < ActiveRecord::Migration[6.0]
  def change
    create_table :book_lists, id: :uuid do |t|
      t.string :title
      t.string :description
      t.string :user_id
      t.integer :quantity

      t.timestamps
    end
  end
end
