class Appointment < ApplicationRecord
  belongs_to :reason
  belongs_to :user
  belongs_to :visitor
  validates :message, presence: true 
  has_one_attached :photo 
  validates :photo, presence: true 
end
