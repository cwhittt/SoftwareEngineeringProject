class Water < ApplicationRecord
    validates :title, presence: true
    validates :unit, presence: true
    validates :amount, presence: true
    validates :time, presence: true
end
