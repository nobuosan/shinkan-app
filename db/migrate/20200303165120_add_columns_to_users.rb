class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :kind, :string
    add_column :users, :often, :string
    add_column :users, :content, :string
    add_column :users, :gender, :string
    add_column :users, :alcohol, :string
    add_column :users, :expenses, :string
    add_column :users, :room, :string
    add_column :users, :fes, :string
    add_column :users, :gachi, :integer
    add_column :users, :party, :integer
  end
end