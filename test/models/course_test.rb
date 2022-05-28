require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'Valid Course' do
    course = Course.new(name: 'Test Course', author_id: 1)
    assert course.valid?
  end

  test 'Invalid course without author' do
    course = Course.new(name: 'Test Course')
    refute course.valid?, 'course is not valid without an author'
    assert_not_nil course.errors[:author_id], 'no validation error for name present'
  end
end
