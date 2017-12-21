class Course < ApplicationRecord
  has_many :users, through: :enrollments
  has_many :lessons, dependent: :destroy
  has_many :enrollments, dependent: :destroy

  def enrollment(user)
    enrollments.find_by(user: user)
  end
end
