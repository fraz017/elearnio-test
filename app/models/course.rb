class Course < ApplicationRecord
  belongs_to :author
  has_many :courses_talents, dependent: :destroy
  has_many :talents, through: :courses_talents
  
  validates :name, presence: true
end
