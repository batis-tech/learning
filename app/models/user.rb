class User < ApplicationRecord
    rolify
    has_many :course, dependent: :nullify
    after_create :assign_default_role
# there could be two approach for the course has to be transferred to another author. the first one is to add nullify 
# which will make the user_id as null then admin can assign to other author
# the other option is to add before_destroy and assign it to another author


#     before_destroy :reset_courses

#   def reset_courses
#     self.courses.update_all(user_id: 2)
#   end

    def assign_default_role
      self.add_role(:student) if self.roles.blank?
    end
  
end
