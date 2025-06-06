class Course < ApplicationRecord
  has_many :enrollments
  has_many :students, through: :enrollments

  validates :title, presence: true
end
