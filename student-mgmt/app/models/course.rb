class Course < ApplicationRecord
  has_and_belongs_to_many :students
  validates :title, :description, presence: true
end
