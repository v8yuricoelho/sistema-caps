class Cid10 < ApplicationRecord
    validates :code, presence: true, uniqueness: true
    validates :description, presence: true, uniqueness: true
    validates :category, presence: true
end
