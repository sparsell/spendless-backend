class SpendlessAmount < ApplicationRecord
    belongs_to :total

    validates :amount, :description, presence: true
    
end
