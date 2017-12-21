# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
user = User.find_or_create_by!(email: 'd@lysenkooo.ru')
user.update(password: '123456')

Lesson.destroy_all
Course.destroy_all

course = Course.create!(
  name: 'Test Course',
  description: 'Created for test purposes'
)

Lesson.create!(
  course: course,
  position: 1,
  name: 'Foreword',
  body: 'First Lesson'
)

Lesson.create!(
  course: course,
  position: 2,
  name: 'Main Idea',
  body: 'Second Lesson'
)

Lesson.create!(
  course: course,
  position: 3,
  name: 'Congratulations!',
  body: 'Last Lesson'
)

course = Course.create!(
  name: 'Second Course',
  description: 'Created for test purposes'
)

Lesson.create!(
  course: course,
  position: 1,
  name: 'Introduction',
  body: 'First Lesson'
)

Lesson.create!(
  course: course,
  position: 2,
  name: 'Main Idea',
  body: 'Second Lesson'
)

Lesson.create!(
  course: course,
  position: 3,
  name: 'Congratulations!',
  body: 'Last Lesson'
)

user.courses << course
user.save!
