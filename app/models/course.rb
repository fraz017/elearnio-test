class Course < ApplicationRecord
  belongs_to :author
  has_and_belongs_to_many :talents
  
  validates :name, presence: true
end
