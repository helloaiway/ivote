json.array!(@subjects) do |subject|
  json.extract! subject, :id, :name, :user, :topic
  json.url subject_url(subject, format: :json)
end
