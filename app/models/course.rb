class Course < ApplicationRecord
  has_many :lessons, dependent: :destroy
  has_many :users, through: :enrollments
end
