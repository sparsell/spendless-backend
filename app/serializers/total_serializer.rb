class TotalSerializer
  include JSONAPI::Serializer
  attributes :total, :goal_id
  belongs_to :goal
  has_many :spendless_amounts
end