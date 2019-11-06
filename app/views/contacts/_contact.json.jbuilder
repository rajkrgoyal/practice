json.extract! contact, :id, :full_name, :email, :phone, :created_at, :updated_at
json.url contact_url(contact, format: :json)
