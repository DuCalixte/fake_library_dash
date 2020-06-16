class AddMoreInfoToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :author, :string
    add_column :books, :publisher, :string
    add_column :books, :genre, :string
  end
end
