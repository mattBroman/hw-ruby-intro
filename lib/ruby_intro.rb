# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  
  for number in arr
    sum += number
  end
  
  return sum 

end

def max_2_sum arr
  
  if arr.length == 0
    return 0
  end
  
  if arr.length == 1
    return arr[0]
  end
  
  largest = arr[0]
  second = arr[1]
  
  for val in 2..arr.length - 1
    if largest <= arr[val]
      second = largest
      largest = arr[val]
    elsif second <= arr[val]
      second = arr[val]
    end
  end
    
  return largest + second

end

def sum_to_n? arr, n
  
  for i in 0..arr.length - 1
    for j in i + 1..arr.length - 1
      if  arr[i] + arr[j] == n
        return true
      end
    end
  end
  
  return false 
  
end

# Part 2

def hello(name)
  
  return "Hello, " + name
  
end

def starts_with_consonant? s

  if s == ''
    return false
  end
  
  vowles = ['a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U']
  intial_letter = s[0]
  
  if intial_letter !~ /[[:alpha:]]/
    return false
  end
  
  for vowle in vowles
    if intial_letter == vowle
      return false
    end
  end
  
  return true
  
end

def binary_multiple_of_4? s
  if s.length < 3
    return s == '0'
  end 
  
  for i in 0..s.length - 1
    if s[i] != '1' && s[i] != '0'
      return false
    end
  end
  
  return s[s.length - 3, 3] == '100'
  
end

# Part 3

#class BookInStock
# YOUR CODE HERE
#end
