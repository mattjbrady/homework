module FunWithStrings
  def palindrome?
    # Get all lowercase a-z only, no spacing
    original_string = self.downcase.gsub(/[^a-z]/, "") # regex strips non a-z chars from string
    reverse_string = original_string.reverse
    
    # Return true if match has result other than nil
    original_string.match(reverse_string) != nil
    
  end
  def count_words
    # your code here
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
