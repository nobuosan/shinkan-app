class AddMemoaddToMemos < ActiveRecord::Migration[5.2]
  def change
    add_column :memos, :day, :date
    add_column :memos, :times, :string
    add_column :memos, :place, :string
  end
end
