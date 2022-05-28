class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.references :author, null: false, foreign_key: true, index: true
      t.text :description

      t.timestamps
    end
  end
end
