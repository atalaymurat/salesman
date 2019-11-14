json.extract! person, :id, :name, :middle, :family, :created_at, :updated_at
json.url person_url(person, format: :json)
