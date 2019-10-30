class User < ApplicationRecord
    has_and_belongs_to_many :roles  
    has_many :arrivals
    validates :email, :name, :lastname, :identification, presence: true
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
    validates :email, :identification, uniqueness: true
end
