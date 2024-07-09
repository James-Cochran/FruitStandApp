require 'rails_helper'

RSpec.describe FruitStand, type: :model do
     describe 'parent/child' do
        it 'should have many fruits' do
            fruit_stand = FruitStand.new
            fruit = fruit_stand.fruits.new(name: 'Apple', quantity: 10, is_citrus: false)

            expect(fruit_stand.fruits).to include(fruit)
        end
    end
end

RSpec.describe FruitStand, type: :feature do
    describe 'fruit_stands' do
        it 'displays the names of all fruit stands' do
            FruitStand.create!(name: "Fruit_Stand_1")
            FruitStand.create!(name: "Fruit_Stand_2")

        end
    end
end