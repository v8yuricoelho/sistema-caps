class Cne < ApplicationRecord
    validates :code, presence: true, uniqueness: true
    validates :unity, presence: true, uniqueness: true
end
