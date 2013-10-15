require_relative 'dictionary'

include FileDictionary
include Dictionary

begin
  dictionary = FileDictionary::read ARGV.first || nil
  
  words = FileDictionary::sort dictionary
  
  results = Dictionary::readable words
  results = Dictionary::fastest words
  
rescue => e
  puts "Something went wrong: #{e.inspect}"
end