require 'rspec'
require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do

  it 'class creation functions' do
    potluck = Potluck.new('7-13-18')

    expect(potluck.date).to eq('7-13-18')
    expect(potluck.dishes).to eq([])
  end

  it 'class can accept instances of dish class' do
    potluck = Potluck.new('7-13-18')

    couscous_salad = Dish.new('Couscous Salad', :appetizer)
    cocktail_meatballs = Dish.new('Cocktail Meatballs', :entre)


    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)

    expect(potluck.dishes).to eq([couscous_salad, cocktail_meatballs])
    expect(potluck.dishes.length).to eq(2)
  end

  it 'class can get array of all instances of dish class which share category' do
    potluck = Potluck.new('7-13-18')

    couscous_salad = Dish.new('Couscous Salad', :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    cocktail_meatballs = Dish.new('Cocktail Meatballs', :entre)
    candy_salad = Dish.new("Candy Salad", :dessert)

    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(candy_salad)

    expect(potluck.get_all_from_category(:appetizer)).to eq([couscous_salad, summer_pizza])
  end

  it 'class can get first element from array returned by get_all_from_category method' do
    potluck = Potluck.new('7-13-18')

    couscous_salad = Dish.new('Couscous Salad', :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    cocktail_meatballs = Dish.new('Cocktail Meatballs', :entre)
    candy_salad = Dish.new("Candy Salad", :dessert)

    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(candy_salad)

    expect(potluck.get_all_from_category(:appetizer).first).to eq(couscous_salad)
  end

  it 'class can get name of first element from array returned by get_all_from_category method' do
    potluck = Potluck.new('7-13-18')

    couscous_salad = Dish.new('Couscous Salad', :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    cocktail_meatballs = Dish.new('Cocktail Meatballs', :entre)
    candy_salad = Dish.new("Candy Salad", :dessert)

    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(candy_salad)

    expect(potluck.get_all_from_category(:appetizer).first.name).to eq("Couscous Salad")
  end
end
