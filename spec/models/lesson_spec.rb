# == Schema Information
#
# Table name: lessons
#
#  id         :integer          not null, primary key
#  course_id  :integer
#  name       :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  position   :integer
#
# Indexes
#
#  index_lessons_on_course_id  (course_id)
#

require 'rails_helper'

RSpec.describe Lesson, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
