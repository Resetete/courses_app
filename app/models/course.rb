class Course < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2, maximum: 50 }
  validates :short_name, presence: true, length: { minimum: 2, maximum: 10 }
  validates :description, presence: true, length: { minimum: 5, maximum: 150 }

  has_many :enrollments
  has_many :students, through: :enrollments
end
