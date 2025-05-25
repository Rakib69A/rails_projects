class Project < ApplicationRecord
  has_many :students_projects
  has_many :students, through: :students_projects
end
