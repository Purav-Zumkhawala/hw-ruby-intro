# When done, submit this entire file to the autograder.

# Part 1
def sum(arr)
  sum1=0
  arr.each do |item|
    sum1+=item
  end
  return sum1
end

def max_2_sum(arr)
  arr.sort!
  arr.reverse!
  sum_2_max =0
  if(arr[0]==nil)
  elsif (arr[1]==nil)
    sum_2_max=arr[0]
  else
    sum_2_max=arr[0]+arr[1]
  end
  return sum_2_max
end


def sum_to_n? arr, n
  len = arr.length
  0.upto len-1 do |i|
    0.upto len-1 do |j|
      if i!=j
        if arr[i]+arr[j] == n
          return true
        end
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  s = 'Hello, '+name
  return s
end

def starts_with_consonant? s
  
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end
end


def binary_multiple_of_4? s
  if /^(0|1)+(0|1)*(0|1)*$/.match(s) != nil
    len = s.length
    if s[len-1]=="0" and s[len-2]=="0"
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
  # Constructor to initialize 
  # the class with a name 
  # instance variable 
  def initialize(isbn,price)
    raise ArgumentError.new("Not valid number") if isbn == ''
    @isbn = isbn
    raise ArgumentError.new("Not valid number") if price <= 0
    @price = price
  end
  
  # Classical get method 
  def isbn 
    @isbn
  end
  
  # Classical get method 
  def price 
    @price
  end
  
  # Classical set method 
  def isbn=(isbn) 
    @isbn = isbn 
  end
  
  def price=(price) 
    @price=price
  end
  
  def price_as_string()
    ps = self.price.round(2).to_s
    a = ps.split('.')
    if a[1].length==1
      return "$"+ps+"0"
    else
      return "$"+ps
    end
  end
end
