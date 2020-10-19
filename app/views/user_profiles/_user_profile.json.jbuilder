json.extract! user_profile, :id, :age, :location, :mobile_number, :user_tag, :user_id, :created_at, :updated_at
json.url user_profile_url(user_profile, format: :json)
