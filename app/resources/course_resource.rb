class CourseResource < JSONAPI::Resource
  attributes :name, :description
  belongs_to :author
  has_and_belongs_to_many :talents
end