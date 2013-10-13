require_relative 'dictionary'

include DictionaryHelper

begin
  dictionary = DictionaryHelper::read_dictionary ARGV.first || nil
  
  words = DictionaryHelper::sort_dictionary dictionary
  
  results = DictionaryHelper::readable words
rescue => e
  puts "Something went wrong: #{e.inspect}"
end