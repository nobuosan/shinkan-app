class AddReferencesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :admin, default: false
  end
end
