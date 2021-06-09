class Api::V1::SpendlessAmountsController < ApplicationController

    def index
        spendless_amounts = SpendlessAmount.all
        render json: SpendlessAmountSerializer.new(spendless_amounts)
    end

end
