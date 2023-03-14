class ChangeUserEmaliToAddNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :user_email, false
  end
end
