# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  else
    return arr.inject(0){|sum,x| sum + x }
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    return arr.sort[-1] + arr.sort[-2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.each_with_index { |xv, xi|
    arr.each_with_index { |yv, yi|
      if xv + yv == n && xi != yi
        return true
      end
    }
  }
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  vowel = ["a","e","i","o","u"]
  if s.empty?
    return false
  elsif s[0] =~ /[A-Za-z]/
    if vowel.include?(s[0].downcase)
      return false
    else
      return true
    end
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty?
    return false
  elsif /(\A\d+\z)/ =~ s
    if s.to_i % 4 == 0
      return true
    else
      return false
    end
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    raise ArgumentError if @isbn == "" || @price <= 0
  end
  def price_as_string
    price_string = @price.to_s
    if price_string.include?(".")
      fractional = price_string.split(".")[1]
      if fractional.length < 2
        zero_string = "0" * (2 - fractional.length)
      else
        zero_string = ""
      end
    else
      zero_string = ".00"
    end
    return "$" + price_string + zero_string
  end
end
