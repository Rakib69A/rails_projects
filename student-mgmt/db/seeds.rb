# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
student1 = Student.create(
  first_name: 'Rakib',
  last_name: 'Hasan',
  email: 'rakibhasan@gmail.com',
  city: 'Dhaka',
  date_of_birth: '23/12/1999',
  phone: '01303129853'
)

student2 = Student.create(
  first_name: 'Akib',
  last_name: 'Hasan',
  email: 'akibhasan@gmail.com',
  city: 'Pabna',
  date_of_birth: '23/12/1997',
  phone: 'xxxxxx'
)

20.times do |i|
  puts "Creating student #{i+1}"
  Student.create(
    first_name: "Student #{i+1}",
    last_name: "Lname #{i+1}",
    email: "email#{i+1}@gmail.com",
    city:"City#{i+1}",
    date_of_birth: "#{i+10}",
    phone: "01303129856#{i+1}"
  )
end

Student.all.each do |student|
  student.blogs.create(title: "Dummy blog for student #{student.id}", content: "Custom content pending")
  student.blogs.create(title: "Dummy blog for student #{student.id}", content: "Custom content pending")
end

Course.create(title: 'Ruby on Rails', description: 'Pending')
Course.create(title: 'ReactJs', description: 'Pending')
Course.create(title: 'AngularJs', description: 'Pending')
Course.create(title: 'NodeJs', description: 'Pending')
Course.create(title: 'Python', description: 'Pending')
