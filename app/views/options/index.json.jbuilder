json.array!(@options) do |option|
  json.extract! option, :id, :title, :subject, :thumb, :select_counts
  json.url option_url(option, format: :json)
end
