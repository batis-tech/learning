class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :user_email
      t.integer :phone_number

      t.timestamps
    end
  end
end
