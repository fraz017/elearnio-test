class Talent < ApplicationRecord
  belongs_to :author, optional: true
  has_many :courses_talents
  has_many :courses, through: :courses_talents

  validates :name, presence: true
end
