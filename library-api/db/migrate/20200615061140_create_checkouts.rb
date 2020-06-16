class CreateCheckouts < ActiveRecord::Migration[6.0]
  def change
    create_table :checkouts, id: :uuid do |t|
      t.string :user_id
      t.string :book_id
      t.string :book_library_id
      t.date :checkout_date
      t.date :return_date
      t.integer :last_status
      t.integer :status

      t.timestamps
    end
  end
end
