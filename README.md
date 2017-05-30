## Testing Anagrams

Run the first question with 'ruby runners/createAnagramRunner.rb'. The output is the number of changes needed. The code is in 'models/createAnagram'. The algorithm runs in ~ O(2n) as it iterates through both strings saving the first and checking the second. Calculating length is constant O(1) time as is storing and retrieving from the store so I have not included these in the calculation.

Feel free to mess around with the inputs in the runner file.

The tests for this can be run with 'ruby spec/testCreateAnagram.rb' and the code is in spec/testCreateAnagram.

Run the second question with 'ruby runners/checkAnagramRunner.rb'. The code is in 'models/checkAnagram'. This runs in the same ~ O(2n) time also iterating through both strings. Inputs can similarly be adjusted in the runner file.

The tests for this can be run with 'ruby spec/testCheckAnagram.rb' and the code is in spec/testCheckAnagram.
