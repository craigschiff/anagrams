First question:

Find the minimum number of characters of the first string that we need to change, add, or delete in order to make it an anagram of the second string (ignoring upper/lowercase). Please have your method do this in O(n) time, where n is the length of the longer string! https://en.wikipedia.org/wiki/Big_O_notation. Note: O(5n) —> O(n), O(5n log n) —> O(n log n), etc.

For example, string1 = “hello”, string2 = “hi”. Answer = 4. (sub out the "e" for the "i", then delete the "l", "l", and the "o" to get "hi").

string1 = “dogs”, string2 = “gods”. Answer = 0

string1 = “zzz”, string2 = “baloney”. Answer = 7



Second question:

Given two strings, output True if they are anagrams of each other, and False if they are not. Please ignore case, and also do this in O(n) time.

string1 = “dogs”, string2 = “gods”. Answer = True

string1 = “zzz”, string2 = “baloney”. Answer = False
