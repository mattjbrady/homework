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
  def initialize(flavor)
    # your code here
  end
  # your code here
end
