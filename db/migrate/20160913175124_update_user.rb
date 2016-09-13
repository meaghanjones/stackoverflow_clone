class UpdateUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :password_digest
    add_column :users, :password_hash, :string
    add_column :users, :password_salt, :string
  end
end
