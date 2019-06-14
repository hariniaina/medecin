json.extract! patient, :id, :firstname, :lastname, :phone, :date_de_naissance, :adresse, :created_at, :updated_at
json.url patient_url(patient, format: :json)
