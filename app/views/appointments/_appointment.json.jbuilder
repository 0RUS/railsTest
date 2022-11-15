json.extract! appointment, :id, :is_active, :doctor, :patient, :complaint, :recommendation, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
