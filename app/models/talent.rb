class Talent < ApplicationRecord
  belongs_to :author, optional: true
  has_and_belongs_to_many :courses

  validates :name, presence: true
end
