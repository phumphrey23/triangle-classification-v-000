class Triangle
  attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind(side_a, side_b, side_c)
     if positive? == false || valid? == false
       raise TriangleError
     elsif side_a == side_b && side_b == side_c
       :equilateral
     elsif side_a != side_b && side_b != side_c && side_a != side_c
       :scalene
     else
       :isosceles
     end

    # if greater_than_zero == true && triangle_inquality == true
    #   true
    # else
    #   raise TriangleError
    # end

  end

  def positive?
    side_a > 0  && side_b > 0  && side_c > 0
  end

  def valid?
    (side_a + side_b > side_c) && (side_a + side_c > side_b) && (side_b + side_c > side_a)
  end

end

class TriangleError < StandardError
end
