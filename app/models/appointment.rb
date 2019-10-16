class Appointment < ApplicationRecord
  belongs_to :reason
  belongs_to :user
  belongs_to :visitor
end
