json.array!(@subject_data) do |subject_datum|
  json.extract! subject_datum, :id, :topic_img, :description, :start_time, :end_time, :subject, :template, :style, :type
  json.url subject_datum_url(subject_datum, format: :json)
end
