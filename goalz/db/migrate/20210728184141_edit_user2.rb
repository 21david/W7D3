class EditUser2 < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :username, :email
  end
end
