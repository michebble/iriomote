class Team < ApplicationRecord
  has_ancestry
  validates :name, presence: true
end
