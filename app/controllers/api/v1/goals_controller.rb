class Api::V1::GoalsController < ApplicationController

    def index
        @goals = Goal.all 
    end

end
