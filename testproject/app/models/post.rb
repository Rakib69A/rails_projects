class Post < ApplicationRecord
  # this is good practice
  before_create :greeting_message

  def greeting_message
    puts "As_salamu_alaikum, I will run before you created an object!"
  end

  # Not good practice
  # before_create do
  #   puts "As_salamu_alaikum, I will run before you created an object!"
  # end
end
