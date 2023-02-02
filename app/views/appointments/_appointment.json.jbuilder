json.extract! appointment, :id, :appointment_date, :status, :description, :doctor_id, :user_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
