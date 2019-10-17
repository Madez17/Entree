class Visitor < ApplicationRecord
    validates :name, :lastname, :identification, presence: true

end
