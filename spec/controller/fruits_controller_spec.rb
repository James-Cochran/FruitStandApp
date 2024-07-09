require 'rails_helper'

RSpec.describe FruitsController, type: :controller do
    describe 'GET #index' do
        it 'displays fruits belonging to a specific fruit stand' do
            fruit_stand = FruitStand.create!(name: "Frankie's Fruit Stand", number_of_employees: 5, in_stock: true)
            fruit1 = fruit_stand.fruits.create!(name: "Apple", quantity: 10, is_citrus: false)
            fruit2 = fruit_stand.fruits.create!(name: "Orange", quantity: 9, is_citrus: true)
            fruit3 = fruit_stand.fruits.create!(name: "Banana", quantity: 8, is_citrus: false)

            get :index, params: { fruit_stand_id: fruit_stand.id }

            expect(response.body).to include(fruit1.name)
            expect(response.body).to include(fruit2.name)
            expect(response.body).to include(fruit3.name)
        end
    end
end