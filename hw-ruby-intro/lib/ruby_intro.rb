# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # Return the sum of array elements
  return arr.sum
end

def max_2_sum arr
  # If array contains no values, return 0
  if arr.length() <= 0
    return 0
  # If array only has length of 1, return only value in array
  elsif arr.length() == 1
    return arr[0]
  # Other cases
  else arr.length() >= 1
    # Get largest value
    largest_val = arr.max
    # Remove that value from array
    arr.delete_at(arr.index(arr.max))
    # Get next largest valye
    second_largest_val = arr.max

    # Return sum of two values
    return largest_val+second_largest_val 
  end
end

def sum_to_n? arr, n
  # If array is 0 or 1 in length, return false
  if arr.length() <= 1
    return false
  else
    match_found = false # set a flag for finding a matching pair

    # Iterate through array arr to all but final element
    for i in 0..(arr.length()-2)
      # Iterate from elements after i to end of array
      for j in (i+1)..(arr.length()-1)
        # Test if sum of i and j = n
        if (arr[i] + arr[j]) == n
            match_found = true
        end
      end
    end
    
    # Return result of search
    return match_found
  end
end

# Part 2

def hello name
  # Return message with name added
  return "Hello, " + name
end

def starts_with_consonant? s
  # If empty string
  if s.empty?
    return false

  # String contains values
  else
    # Extract first character as lowercase
    char = s[0].downcase()
    # If is alpha value
    if (char =~ /[a-z]/) != nil
      # If is NOT a vowel
      if (char =~ /[^aeiou]/) != nil
        # Char was a letter that is not a vowel
        return true
      else
        # Char was a letter that is a vowel
        return false
      end
    else
      # Char was not an alpha letter
      return false
    end
  end
end

def binary_multiple_of_4? s
  # Check if string is empty
  if s.empty?
    return false
  end

  # Check for string containing non-binary values
  s_test = s.chars
  s_test.each do |value| 
    if value != '0' && value != '1'
      return false
    end
  end

  # Convert string to decimal value
  decimal_value = s.to_i(base=2)

  # Test if value is divisible by 4 evenly
  if decimal_value % 4 == 0
    return true
  else
    return false
  end
end


# Part 3

class BookInStock
# YOUR CODE HERE
end
