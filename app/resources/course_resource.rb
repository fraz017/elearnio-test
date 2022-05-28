class CourseResource < JSONAPI::Resource
  attributes :name, :description
  belongs_to :author
  has_many :courses_talents
  has_many :talents, through: :courses_talents
end