class CreateCoursesTalents < ActiveRecord::Migration[6.0]
  def change
    create_table :courses_talents do |t|
      t.references :talent, index: true
      t.references :course, index: true
    end
  end
end
