class Student < ApplicationRecord
  has_many :blogs
  has_and_belongs_to_many :courses
  has_many :students_projects
  has_many :projects, through: :students_projects

  validates :first_name, :last_name, :email, presence: true
end
