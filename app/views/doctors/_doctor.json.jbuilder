json.extract! doctor, :id, :name, :cost, :free, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
