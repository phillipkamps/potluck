require 'rspec'
require './lib/dish'

RSpec.describe Dish do

  it 'confirms class creation functions' do
    dish = Dish.new('Couscous Salad', :appetizer)

    expect(dish.name).to eq('Couscous Salad')
    expect(dish.category).to eq(:appetizer)
  end
end
