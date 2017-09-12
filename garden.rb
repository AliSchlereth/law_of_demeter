class Garden
  attr_reader :flowers

  def initialize
    @flowers = []
  end

  def grow_a_flower
    @flowers << Flower.new
  end

# Here Garden knows it has Flowers
# It asks the Flower for its color
# Flower knows how to ask Petal about its color
  def color_of_garden_delegated
    flower = @flowers.first
    flower.flower_color
  end

# Here Garden knows about Flower, Petal, and its method color
# Garden knows too much
  def color_of_garden_knows_too_much
    flower = @flowers.first
    flower.petal.color
  end

end
