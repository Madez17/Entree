class Visitor < ApplicationRecord
    validates :name, :lastname, :identification, presence: true
    has_many :appointments

end
