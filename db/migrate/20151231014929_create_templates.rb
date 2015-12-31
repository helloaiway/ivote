class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :name
      t.integer :thumbnail
      t.text :description

      t.timestamps null: false
    end
  end
end
