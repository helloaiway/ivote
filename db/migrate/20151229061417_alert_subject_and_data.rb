class AlertSubjectAndData < ActiveRecord::Migration
  def change
  	change_table :subjects do |t|
	  t.rename :user, :user_id
	end

	change_table :subject_data do |t|
	  t.rename :subject, :subject_id
	  t.remove :topic_img
	  t.integer :topic_img
	end

  end
end
