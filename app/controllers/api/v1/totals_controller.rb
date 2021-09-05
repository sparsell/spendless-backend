class Api::V1::TotalsController < ApplicationController

    def index
        totals = Total.all
        render json: TotalSerializer.new(totals)
    end
    
    def create
        total = Total.create(total_params)
        if total.save 
            render json: TotalSerializer.new(totals)
        else
            render json: {errors: @total.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def update
        total = Total.find(params[:id])
        total.update(total: params[:total][:total])
    end

    private

        def total_params
            
            params.require(total).permit(:total, :goal_id)
            
        end

end
