class Appointment < ApplicationRecord
  belongs_to :reason
  belongs_to :user
  belongs_to :visitor
  validates :message, presence: true 
  has_one_attached :photo 
  validate :has_photo


  def has_photo    
    errors.add(:smile, "Take a picture") unless photo.attached?
  end
  
end
