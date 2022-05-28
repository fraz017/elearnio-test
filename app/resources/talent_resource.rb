class TalentResource < JSONAPI::Resource
  attributes :name
  belongs_to :author
  has_and_belongs_to_many :courses
end