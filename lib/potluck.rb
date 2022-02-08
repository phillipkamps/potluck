class Potluck
  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(name)
    @dishes << name
  end

  def get_all_from_category(x)
    appetizers = []
    entres = []
    desserts = []

    if x == :appetizer
      @dishes.each do |dish|
        if dish.category == :appetizer
        appetizers << dish
        end
      end
      return appetizers
    elsif x == :entre
      @dishes.each do |dish|
        if dish.category == :entre
        entres << dish
        end
      end
      return entres
    elsif x == :dessert
      @dishes.each do |dish|
        if dish.category == :dessert
        desserts << dish
        end
      end
      return desserts
    end
  end
end
