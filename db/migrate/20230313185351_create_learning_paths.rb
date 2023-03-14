class CreateLearningPaths < ActiveRecord::Migration[6.1]
  def change
    create_table :learning_paths do |t|
      t.string :path_name
      t.text :path_description

      t.timestamps
    end
  end
end
