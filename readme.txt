Ruby Kata - to discover 6-letters word which is made with two words contained in the word list.

For each solutions, I read and sort words list, then I make a hash for which key is the number of letters in the words and the value is the array.

~ Readable search ~
1545 results found in 389.172758 s

For the first code, which should be readable, I choose to build all possibilities with two short words. And then verify if the composed word is in the list of six letters words. For that, I take 1-letter words and 5-letters words to compose a word, then 2-letters words with 4-letters words, then 3-letters words with 3-letters words, then 4-letters words with 2-letters words, then 5-letters words and 1-letter words.


~ Fastest search ~
1545 results found in 2.604411 s

For the second version, I split every 6-letters words in two short words and check if those exists in their respectives array.