class Subject < ActiveRecord::Base
	has_many :options
	has_one :subject_data,	dependent: :destroy,
							class_name: "SubjectDatum"
	belongs_to :user
	has_one :template
	has_one :style
end
