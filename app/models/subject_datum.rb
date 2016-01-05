class SubjectDatum < ActiveRecord::Base
	belongs_to :subject
	#has_one :topic_img, class_name: "Upload",
	#					foreign_key: "topic_img"
end
