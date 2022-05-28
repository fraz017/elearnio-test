class CreateCoursesTalents < ActiveRecord::Migration[6.0]
  def change
    create_table :courses_talents do |t|
      t.references :talent, null: false, foreign_key: true, index: true
      t.references :course, null: false, foreign_key: true, index: true
    end
  end
end
