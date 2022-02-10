class Dessert
  # set up getter/setters
  attr_accessor :name, :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    # Is healthy if fewer than 200 calories
    @calories < 200
  end

  def delicious?
    # Always true
    true
  end

end

class JellyBean < Dessert
  attr_accessor :flavor
  
  def initialize(flavor)
    @flavor = flavor
    @name = @flavor + ' jelly bean'
    @calories = 5
  end
  
  def delicious?
    @flavor == 'licorice' ? false : true
  end

end
