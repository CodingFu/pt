json.array!(@users) do |user|
  json.extract! user, :id, :email, :password, :password_confirmation, :is_teacher, :name, :course
  json.url user_url(user, format: :json)
end
