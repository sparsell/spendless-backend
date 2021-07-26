class SpendlessAmountSerializer
  include JSONAPI::Serializer
  attributes :amount, :description, :total_id, :total
  belongs_to :total
end
