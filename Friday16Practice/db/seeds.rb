# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# studnets
s1 = Student.create(
  name: "Rakib",
  email: "rakibhasan@gmail.com"
)

s2 = Student.create(
  name: "Imran",
  email: "imranzaman@gmail.com"
)
\
# courses
c1 = Course.create(
  title: "CSE",
  code: "CSE-4206"
)
c2 = Course.create(
  title: "Physics",
  code: "PHY101"
)


# Enrollments
s1.courses << c1
s1.courses << c2
s2.courses << c2
