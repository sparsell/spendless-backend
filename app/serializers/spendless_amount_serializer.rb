class SpendlessAmountSerializer
  include JSONAPI::Serializer
  attributes :amount, :total_id, :total
  belongs_to :total
end
