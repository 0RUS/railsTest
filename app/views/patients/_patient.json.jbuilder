json.extract! patient, :id, :first_name, :last_name, :phone, :email, :complaints, :created_at, :updated_at
json.url patient_url(patient, format: :json)
