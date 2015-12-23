class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :title
      t.integer :subject
      t.string :thumb
      t.integer :select_counts

      t.timestamps null: false
    end
  end
end
