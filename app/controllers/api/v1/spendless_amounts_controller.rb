class Api::V1::SpendlessAmountsController < ApplicationController

    def index
        spendless_amounts = SpendlessAmount.all
        render json: SpendlessAmountSerializer.new(spendless_amounts)
    end

    def create
        spendless_amount.new(spendless_amount_params)
        if spendless_amount.save    
            render jeson: spendless_amount, status: :accepted
        else
            render json: {errors: spendless_amount.errors.full_messages }, status: :unprocessible_entity
        end
    end


    private

    def spendless_amount_params
        params.require(:spendless_amount).permit(:description, :total_id)
    end


end
