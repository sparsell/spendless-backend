class Api::V1::GoalsController < ApplicationController

    def index
        goals = Goal.all 
        render json: goals
    end

    def create
        goal = Goal.create(goal_params)
        if goal.save
            render json
        else

        end
    end

    private

        def goal_params
            params.require(goal).permit(:goal_amount, :description)
        end

end
