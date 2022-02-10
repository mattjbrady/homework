module FunWithStrings
  def palindrome?
    # Get all lowercase a-z only, no spacing
    original_string = self.downcase.gsub(/[^a-z]/, "") # regex strips non a-z chars from string
    reverse_string = original_string.reverse
    
    # Return true if match has result other than nil
    original_string.match(reverse_string) != nil
  end

  def count_words
    # Generate an empty hash
    count = Hash.new(0)

    # Generate an array of all words in passed string, all lowercase
    words = self.downcase.strip.split(/\W+/)

    # For each word in the array
    words.each do |word|
      # Go to its key (or create it) and add 1 to the associated value
      count[word] += 1
    end

    # Return the hash with total word counts
    count
  end

  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:
class String
  include FunWithStrings
end
