json.array!(@styles) do |style|
  json.extract! style, :id, :name, :value, :thumbnail, :description
  json.url style_url(style, format: :json)
end
