class LearningPath < ApplicationRecord
    has_many :courses
    validates :courses, :presence => true
end
