class Api::V1::SpendlessAmountsController < ApplicationController

    def index
        spendless_amounts = SpendlessAmount.all
        render json: SpendlessAmountSerializer.new(spendless_amounts)
    end

    def create
        spendless_amount = SpendlessAmount.create(spendless_amount_params)
        spendless_amount.total = Total.first
        
        if spendless_amount.save    
            render json: SpendlessAmountSerializer.new(spendless_amount)
        else
            render json: {errors: spendless_amount.errors.full_messages }, status: :unprocessible_entity
        end
    end


    private

    def spendless_amount_params
        params.require(:spendless_amount).permit(:amount, :description, :total_id)
    end


end
