json.extract! doctor, :id, :first_name, :last_name, :gender, :date_of_birth, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
