# Created on March 11th, 2018 by Aamir Islam

# Represents a class of random generator tools
class Random_Generator


  # Given two numbers, raises an exception if lower_bound
  # is greater than upper_bound.
  def check_bounds(lower_bound, upper_bound)
    if lower_bound > upper_bound
      raise "The upper bound cannot be less than the lower bound."
    end
  end

  # Given two numbers, generates a random number greater than
  # or equal to lower_bound, and less than
  # or equal to upper_bound.
  def random_number(lower_bound, upper_bound)
    check_bounds(lower_bound, upper_bound)
    return Random.rand(lower_bound..upper_bound)
  end

  # returns a random boolean value
  def random_boolean
    return Random.rand >= 0.5
  end

  # given three numbers, returns an array of size elements
  # containing random numbers greater than or equal to
  # lower_bound, and less than or equal to upper_bound
  def random_number_array(elements, lower_bound, upper_bound)
    remaining = elements
    arr = []
    while remaining > 0
      arr.push random_number(lower_bound, upper_bound)
      remaining -= 1
    end
    return arr
  end

  # returns an array of size elements of random
  # boolean elements
  def random_boolean_array(elements)
    remaining = elements
    arr = []
    while remaining > 0
      arr.push random_boolean
      remaining -= 1
    end
    return arr
  end


end
