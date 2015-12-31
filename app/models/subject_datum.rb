class SubjectDatum < ActiveRecord::Base
	belongs_to :subject
	has_one :upload
end
