class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.boolean :international
      t.text :description
      t.string :dietary
      t.integer :course_id

      t.timestamps
    end
  end
end
