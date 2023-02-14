class Triangle
  # write code here
attr_reader :a, :b, :c

def initialize(a, b, c)
  @a = a
  @b = b
  @c = c
end

def kind
  validate_triangle
  if a == b && b == c
    :equilateral
  elsif a == b || b == c || a == c
    :isosceles
  else
    :scalene
  end
end

def side_greater_zero
  if a > 0 && b > 0 && c > 0
    true
  else
    false
  end
end

def triangle_inequality
  sumA = [a, b].sum
  sumB = [b, c].sum
  sumC = [c, a].sum

  if sumA > c && sumB > a && sumC > b
    true
  else
    false
  end
end

def validate_triangle
  raise TriangleError unless triangle_inequality == true && side_greater_zero == true
end

class TriangleError < StandardError
end
end
