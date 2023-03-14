class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :course_name
      t.text :course_description
      t.references :learning_path, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
