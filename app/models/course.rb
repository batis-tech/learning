class Course < ApplicationRecord
  resourcify
  belongs_to :learning_path

  def is_author
    user = User.find_by(id: self.user_id)
    user.has_role? :author
  end

  validate :is_author
end
