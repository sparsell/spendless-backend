class SpendlessAmountSerializer
  include JSONAPI::Serializer
  attributes :amount, :description, :total_id, :created_at
  belongs_to :total

end
