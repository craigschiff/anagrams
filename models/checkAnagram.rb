
class CheckAnagram
  attr_accessor :string1, :string2, :anagram, :store
  def initialize(string1, string2)
    @string1 = string1
    @string2 = string2
    @store = Hash.new(0)
    @anagram = false
  end
  def store_chars
    string1.chars.each do |char|
      store[char] += 1
    end
  end

  def check_anagram
    i = 0
    return false if string1.length != string2.length # length is O(1) calc
    while string2[i]  # checking to see same length
      if store[string2[i]] > 0
        store[string2[i]] -= 1
      else
        return false
      end
      i += 1
    end
    @anagram = true
  end

end
