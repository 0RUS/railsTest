class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.boolean :is_active
      t.integer :doctor
      t.integer :patient
      t.string :complaint
      t.string :recommendation

      t.timestamps
    
    remove_column :patients, :appointments, :string
    remove_column :patients, :doctor_user_id, :string
    remove_column :patients, :complaints, :string
    remove_column :doctors, :cost, :integer
    remove_column :doctors, :patients_count, :integer
    end
  end
end
