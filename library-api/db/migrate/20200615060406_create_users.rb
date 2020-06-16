class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :username
      t.string :firstname
      t.string :lastname
      t.boolean :is_admin

      t.timestamps
    end
  end
end
