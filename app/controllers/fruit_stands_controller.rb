class FruitStandsController < ApplicationController
    def index
        @fruit_stands = FruitStand.all
    end

    def show
        @fruit_stand = FruitStand.find(params[:id])
        @fruits = @fruit_stand.fruits
    end

end
