class Api::V1::GoalsController < ApplicationController

    def index
        goals = Goal.all 
        # render json: goals
        render json: GoalSerializer.new(goals)
    end

    def create
        goal = Goal.create(goal_params)
        if goal.save
            render json: GoalSerializer.new(goal)
        else
            render json: {errors: goal.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def update
        goal = Goal.find(params[:id])
        goal.update(goal_amount: params[:goal][:goal_amount])
    end

    private

        def goal_params
            params.require(:goal).permit(:goal_amount)
        end

end
