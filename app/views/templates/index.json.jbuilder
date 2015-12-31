json.array!(@templates) do |template|
  json.extract! template, :id, :name, :thumbnail, :description
  json.url template_url(template, format: :json)
end
