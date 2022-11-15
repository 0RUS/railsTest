class ChangeDoctorsFields < ActiveRecord::Migration[7.0]
  def change
    remove_column :doctors, :name, :string
    add_column :doctors, :first_name, :string
    add_column :doctors, :last_name, :string
    add_column :doctors, :phone, :string
    add_column :doctors, :email, :string
  end
end