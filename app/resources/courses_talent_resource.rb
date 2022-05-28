class CoursesTalentResource < JSONAPI::Resource
  belongs_to :course
  belongs_to :talent
end