class Reason < ApplicationRecord
  validates :description, presence: true
  validates :description, uniqueness: true
end

