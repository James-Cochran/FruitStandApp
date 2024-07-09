require 'rails_helper'

RSpec.describe 'Fruits Show Page', type: :feature do
    it 'displays each fruit and its attributes' do
        fruit_stand = FruitStand.create!(name: "Frankie's Fruit Stand", number_of_employees: 5, in_stock: true)
        fruit1 = fruit_stand.fruits.create!(name: "Apple", quantity: 10, is_citrus: false)
        fruit2 = fruit_stand.fruits.create!(name: "Orange", quantity: 9, is_citrus: true)
        fruit3 = fruit_stand.fruits.create!(name: "Banana", quantity: 8, is_citrus: false)

        visit '/fruits'

        expect(page).to have_content(fruit1.name) 
        expect(page).to have_content(fruit1.quantity)
        expect(page).to have_content("Citrus: #{fruit1.is_citrus}")

        expect(page).to have_content(fruit2.name) 
        expect(page).to have_content(fruit2.quantity)
        expect(page).to have_content("Citrus: #{fruit2.is_citrus}")

        expect(page).to have_content(fruit3.name) 
        expect(page).to have_content(fruit3.quantity)
        expect(page).to have_content("Citrus: #{fruit3.is_citrus}")
    end
end