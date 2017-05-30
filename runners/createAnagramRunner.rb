require_relative '../models/createAnagram.rb'

string1 = 'hello'
string2 = 'hi'


def run (string1, string2)
  create_anagram = CreateAnagram.new(string1, string2)
  create_anagram.create
  puts create_anagram.counter
end

run(string1, string2)
