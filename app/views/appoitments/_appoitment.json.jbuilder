json.extract! appoitment, :id, :motif, :date, :duree, :doctor_id, :patient_id, :created_at, :updated_at
json.url appoitment_url(appoitment, format: :json)
