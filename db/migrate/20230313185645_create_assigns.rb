class CreateAssigns < ActiveRecord::Migration[6.1]
  def change
    create_table :assigns do |t|
      t.references :course, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :completed

      t.timestamps
    end
  end
end
