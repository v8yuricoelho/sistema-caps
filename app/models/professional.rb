class Professional < ApplicationRecord
    validates :name, presence: true
    validates :function, presence: true
    
    has_many :patients, through: :appointments
end
