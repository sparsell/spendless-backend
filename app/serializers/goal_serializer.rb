class GoalSerializer
  include JSONAPI::Serializer
  attributes  :description, :goal_amount, :total_id, :total
end
