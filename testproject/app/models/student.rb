class Student < ApplicationRecord
  validates :name, :email, :dob, presence: true
  validates :email, uniqueness: true
  validates :name, length: {minimum: 2, maximum: 10}
  validates :name, format: {with: /\A[a-zA-Z]+\z/, message: "letters only allowed"}

  ############## Custom Validation ~~~~~~~~~~~~~
  validate :validate_dob
  def validate_dob
    if self.dob.present?
      age = Date.today.year - self.dob.year
      if age < 15
        errors.add(:add, "dob must be greater that 15 years old.")
      end
    end
  end
  # after_create :display_student_age
  #
  # def display_student_age
  #   if self.dob.present?
  #     age = Date.today.year - self.dob.year
  #     puts "===================== Age of the student is : #{age}============="
  #   else
  #     puts "Age cannot be calculate without date of birth"
  #   end

  # after_update :change_date_of_birth
  #
  # def change_date_of_birth
  #   if self.dob.present?
  #     age = Date.today.year - self.dob.year
  #     p "=============== Updated age of the student : #{age} ================="
  #   else
  #     p "Age can not be updated. Because dob is not found or null"
  #   end

  ## After_save works for after_create & after_update both
  # after_save :display_student_age
  # def display_student_age
  #   if self.dob.present?
  #     age = Date.today.year - self.dob.year
  #     puts "===================== Age of the student is : #{age} ==============="
  #   else
  #     puts "Age can not be created and update. Because of dob not found"
  #   end
  # end

  ## after_commit -> after completing the transection
  after_commit :display_student_age
  def display_student_age
    if self.dob.present?
      age = Date.today.year - self.dob.year
      puts "============== Age of the student is : #{age} ===================="
    else
      puts "Age cannot be calculated. Because is not found or type error"
    end
  end
end
