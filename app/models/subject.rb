class Subject < ActiveRecord::Base
	has_many :option
	has_one :subject_data
end
