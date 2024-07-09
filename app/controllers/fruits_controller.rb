class FruitsController < ApplicationController

    def index
        @fruit_stand = FruitStand.find(params[:fruit_stand_id]) 
        @fruits = @fruit_stand.fruits 
    end
end