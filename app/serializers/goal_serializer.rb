class GoalSerializer
  include JSONAPI::Serializer
  attributes  :description, :goal_amount
end
