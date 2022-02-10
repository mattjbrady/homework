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
    # split the whole set into an array of words
    words = self.downcase.strip.split(/\W+/)

    # Use the group_by iterable to put words into hashes with keys
    # of their sorted characters - anagrams will have the same key
    anagram_data = words.group_by { |word| word.chars.sort}

    # Return the values of the hash: arrays of words that are anagrams
    anagram_data.values
  end
end

# make all the above functions available as instance methods on Strings:
class String
  include FunWithStrings
end
