# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr == []
    return 0
  end
  
  total = 0
  for arr_item in arr
    total += arr_item
  end
  return total  
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr == []
    return 0
  end
  
  if arr.length == 1
    return arr[0]
  end
  
  if arr[0] > arr[1]
    largest = arr[0]
    sec_largest = arr[1]
  else
    largest = arr[1]
    sec_largest = arr[0]
  end
  
  for i in 2...arr.length
    if arr[i] >= largest
      sec_largest = largest
      largest = arr[i]
    elsif arr[i] >= sec_largest
      sec_largest = arr[i]
    end
  end
  return largest + sec_largest
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr == []
    return false
  end
  
  for i in 0...arr.length
    for j in i+1...arr.length
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  
  if s[0].upcase =~ /\A(?=[^aeiou])(?=[a-z])/i
    return true
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  
  # check to see if binary is legit
  for index in 0...s.length
    if s[index] != "1" and s[index] != "0"
      return false
    end
  end
  
  # checking if it is divisible by 4
  if s.to_i % 4 == 0
    return true
  end
  return false
end

# Part 3
class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.empty? || price <=0
      raise ArgumentError.new("wrong input")
    end
    @isbn = isbn
    @price = price
  end 
  
  def isbn
    @isbn
  end
  
  def isbn=(set_isbn)
    @isbn = set_isbn
  end

  def price
    @price
  end

  def price=(set_price)
    @price = set_price
  end
  
  def price_as_string
    format("$%0.2f",@price)
  end
end
