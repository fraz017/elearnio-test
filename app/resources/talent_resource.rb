class TalentResource < JSONAPI::Resource
  attributes :name
  belongs_to :author
  has_many :courses, through: :courses_talents
end