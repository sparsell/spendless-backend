class Total < ApplicationRecord
    belongs_to :goal
    has_many :spendless_amounts
end
