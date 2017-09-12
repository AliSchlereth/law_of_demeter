class Flower
  attr_reader :petal

  def initialize
    @petal = Petal.new
  end


  def height
    "5in"
  end

# Garden uses this method to ask a Petal about its color
  def flower_color
    @petal.color
  end

end
