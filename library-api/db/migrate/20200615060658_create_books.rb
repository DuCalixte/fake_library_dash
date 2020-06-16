class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books, id: :uuid do |t|
      t.string :title
      t.string :isbn
      t.string :description
      t.integer :quantity

      t.timestamps
    end
  end
end
