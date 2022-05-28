class Author < ApplicationRecord
  has_many :courses

  validates :name, presence: true

  after_destroy do
    self.courses.update_all(author_id: Author.order(Arel.sql('RANDOM()')).first.id)
  end
end
