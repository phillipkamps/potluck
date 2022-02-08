require 'rspec'
require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do

  it 'class creation functions' do
    potluck = Potluck.new('7-13-18')

    expect(potluck.date).to eq('7-13-18')
    expect(potluck.dishes).to eq([])
  end

  it 'can accept instances of dish class' do
    couscous_salad = Dish.new('Couscous Salad', :appetizer)
    cocktail_meatballs = Dish.new('Cocktail Meatballs', :entre)

    potluck = Potluck.new('7-13-18')

    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)

    expect(potluck.dishes).to eq([couscous_salad, cocktail_meatballs])
    expect(potluck.dishes.length).to eq(2)
  end

end
