class AddDueDateToCheckouts < ActiveRecord::Migration[6.0]
  def change
    add_column :checkouts, :due_date, :date
  end
end
