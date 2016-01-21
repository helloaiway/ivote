class AlertOptions < ActiveRecord::Migration
  def change
  	change_table :options do |t|
	  t.rename :subject, :subject_id
	end
  end
end
