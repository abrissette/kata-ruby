module Dictionary
  def self.read path
    puts "Reading dictionary..."
    start_reading = Time.now
    if path
      dictionary = File.open(path).read.downcase!.split(/\r?\n/)
    else
      puts "You need to enter a valid path to the dictionary"
      exit
    end
    stop_reading = Time.now
    puts "Dictionary read in #{stop_reading-start_reading} s"
    dictionary
  end

  def self.sort dictionary
    puts "Sorting dictionary..."
    start_sorting = Time.now
    words = {}
    words[1] = []
    words[2] = []
    words[3] = []
    words[4] = []
    words[5] = []
    words[6] = []
    dictionary.map{ |word|
      length = word.length
      if length >= 1 && length <= 6
        words[length] << word
      end
    }
    stop_sorting = Time.now
    puts "Dictionary sorted in #{stop_sorting-start_sorting} s"
    words
  end

  def self.readable words
    puts "Searching for 6 letters words composed by two words..."
    start_searching = Time.now
    results = {}
    [[1,5], [2,4], [3,3], [4,2], [5,1]].each{ |first, second|
      words[first].each{ |short_word_1|
        words[second].each{ |short_word_2|
          composed_word = short_word_1 + short_word_2
          results[composed_word] = [short_word_1, short_word_2] if words[6].include?(composed_word)
        }
      }
    }
    stop_searching = Time.now
    puts "Search took #{stop_searching-start_searching} s"
    puts "#{results.length} results found in #{stop_searching-start_searching} s"
    results
  end

  def self.optimal words
  
  end
end