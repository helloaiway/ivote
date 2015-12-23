class CreateSubjectData < ActiveRecord::Migration
  def change
    create_table :subject_data do |t|
      t.string :topic_img
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      t.integer :subject
      t.integer :template
      t.integer :style
      t.string :type

      t.timestamps null: false
    end
  end
end
