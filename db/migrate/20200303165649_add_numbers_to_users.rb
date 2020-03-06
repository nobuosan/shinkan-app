class AddNumbersToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :numbers, :integer
  end
end
