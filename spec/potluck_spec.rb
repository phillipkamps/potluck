require 'rspec'
require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do

  it 'confirms class creation functions' do
    potluck = Potluck.new('7-13-18')

    expect(potluck.date).to eq('7-13-18')
    expect(potluck.dishes).to eq([])
  end
end
