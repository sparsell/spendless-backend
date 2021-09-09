class Api::V1::GoalsController < ApplicationController

    def index
        goal = Goal.all 
        render json: GoalSerializer.new(goal)
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
        if goal.save
            render json: GoalSerializer.new(goal)
        else
            render json: {errors: total.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

        def goal_params
            params.require(:goal).permit(:goal_amount)
        end

end

def update
        total = Total.find(params[:id])
        total.update(total: total.spendless_amounts.sum(:amount))
         if total.save
            render json: TotalSerializer.new(total)
         else
            render json: {errors: total.errors.full_messages}, status: :unprocessible_entity
        end
    end
