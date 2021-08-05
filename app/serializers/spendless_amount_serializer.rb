class SpendlessAmountSerializer
  include JSONAPI::Serializer
#   attributes :amount, :description, :total_id
  attributes :amount, :description
  belongs_to :total

  validates :amount, :description, presence: true
end
