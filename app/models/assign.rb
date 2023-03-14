class Assign < ApplicationRecord
  belongs_to :course
  belongs_to :user
  after_update :is_complete
  def is_complete
    if self.completed = true && self.courses.length > 1
      course = Course.where.not(id: self.id).limit(1).offset(1).first
      Assign.create(
        course_id: course.id,
        user_id: self.user_id,
        completed: false
      )
    end
  end



end
