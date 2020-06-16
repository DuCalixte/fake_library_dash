class CreateBookListInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :book_list_infos, id: :uuid do |t|
      t.string :book_id
      t.string :user_id
      t.string :list_id

      t.timestamps
    end
  end
end
