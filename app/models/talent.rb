class Talent < ApplicationRecord
  belongs_to :author, optional: true

  validates :name, presence: true
end
