class Subject < ActiveRecord::Base
	has_many :option
	has_one :subject_datum, dependent: destroy
	belongs_to :user
end
