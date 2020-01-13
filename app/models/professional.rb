class Professional < ApplicationRecord
    has_many :patients, through: :appointments
end
