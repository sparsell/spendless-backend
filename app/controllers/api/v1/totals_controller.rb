class Api::V1::TotalsController < ApplicationController

    def index
        totals = Total.all
        render json: TotalSerializer.new(totals)
    end
    
    def create
        total = Total.create(total_params)
        if total.save 
            # render json: total, status: :accepted
            render json: TotalSerializer.new(totals)
        else
            render json: {errors: @total.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def edit

    end

    def update

    end

    private

        def total_params
            
            params.require(total).permit(:total, :goal_id)
            
        end

end
