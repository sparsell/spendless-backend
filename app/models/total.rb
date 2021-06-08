class Total < ApplicationRecord
    has_many :spendless_amounts, dependent: :destroy
    belongs_to :goal
    
end
