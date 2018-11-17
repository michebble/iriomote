class Employee < ApplicationRecord
  validates :email, uniqueness: true
  belongs_to :team
end
