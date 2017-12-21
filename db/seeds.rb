# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
User.destroy_all
User.create!(email: 'd@lysenkooo.ru', password: '123456')

Course.destroy_all
course = Course.create!(
  name: 'Test Course',
  description: 'Created for test purposes'
)

Lesson.create!(
  course: course,
  name: 'Foreword',
  body: 'First Lesson'
)

Lesson.create!(
  course: course,
  name: 'Main Idea',
  body: 'Second Lesson'
)

Lesson.create!(
  course: course,
  name: 'Congratulations!',
  body: 'Last Lesson'
)
