require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'Valid author' do
    author = Author.new(name: 'John', email: 'john@example.com')
    assert author.valid?
  end

  test 'Invalid author without name' do
    author = Author.new(email: 'john@example.com')
    refute author.valid?, 'user is valid without a name'
    assert_not_nil author.errors[:name], 'no validation error for name present'
  end
end