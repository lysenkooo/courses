# == Schema Information
#
# Table name: enrollments
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  course_id   :integer
#  step        :integer
#  finished_at :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_enrollments_on_course_id  (course_id)
#  index_enrollments_on_user_id    (user_id)
#

require 'rails_helper'

RSpec.describe Enrollment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
