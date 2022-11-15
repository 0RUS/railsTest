class AddUserIdToDoctors < ActiveRecord::Migration[7.0]
  def change
    add_column :doctors, :post, :string
    add_index :doctors, :post
    add_column :doctors, :patients_count, :integer
    add_column :doctors, :user_id, :integer
    add_index :doctors, :user_id
    add_column :patients, :user_id, :integer
    add_index :patients, :user_id
    add_column :users, :user_role, :integer, :null => false, :default => 1
    add_index :users, :user_role
  end
end
