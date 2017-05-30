require_relative '../models/checkAnagram.rb'

string1 = 'dogs'
string2 = 'gods'

def run (string1, string2)
  check_anagram = CheckAnagram.new(string1, string2)
  check_anagram.store_chars
  answer = check_anagram.check_anagram
  puts answer
end

run(string1, string2)
