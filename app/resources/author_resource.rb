class AuthorResource < JSONAPI::Resource
  attributes :name, :email, :phone
  has_many :courses
end