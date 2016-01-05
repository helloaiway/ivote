class AlertSubjectAndSubjectData < ActiveRecord::Migration
  def change
  	change_table :subjects do |t|
	  t.integer :template_id
	  t.integer :style_id
	end

	change_table :subject_data do |t|
	  t.remove :template
	  t.remove :style
	end
  end
end
