
class CreateAnagram
  attr_accessor :string1, :string2, :counter, :difference, :store

  def initialize(string1, string2)
    @string1 = string1
    @string2 = string2
    @difference = string1.length - string2.length
    @counter = @difference.abs
    @store = Hash.new(0)
  end

  def create
    if @difference > 0
      store_chars(string1)
      count_changes(string2)
    else
      store_chars(string2)
      count_changes(string1)
    end
  end

  def store_chars(string)
    string.chars.each do |char|
      if store[char]
        store[char] += 1
      else
        store[char] = 1
      end
    end
  end

  def count_changes(string)
    i = 0
    while i < string.length
      if store[string[i]] > 0
        store[string[i]] -= 1
      else
        @counter += 1
      end
      i += 1
    end
  end

end
