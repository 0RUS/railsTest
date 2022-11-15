class CreateLinkToDoctor < ActiveRecord::Migration[7.0]
  def change
    add_column :patients, :doctor_user_id, :integer
    add_column :doctors, :post, :string
  end
end