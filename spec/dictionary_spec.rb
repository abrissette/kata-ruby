require_relative '../dictionary'

describe 'FileDictionary' do
  
  before(:each) do
    @dictionary = FileDictionary::read File.path('test_dictionary.txt')
  end
  
  describe 'read_file' do
    it 'should return an array for dictionary' do
      @dictionary.length.should eq(17)
    end

    it 'should return a message if the path is empty' do
      lambda{ output = FileDictionary::read nil }.should raise_error SystemExit
    end
  end

  describe 'sort_file' do
    it 'should return an sorted array' do
      words = FileDictionary::sort @dictionary
      words[1].length.should be(0)
      words[2].length.should be(2)
      words[3].length.should be(3)
      words[4].length.should be(3)
      words[5].length.should be(1)
      words[6].length.should be(8)
    end
  end
end

describe 'Dictionary' do
  before(:each) do
    @words = FileDictionary::sort(FileDictionary::read(File.path('test_dictionary.txt')))
  end
  
  describe 'readeable' do
    it 'should search for all possibilities' do
      results = Dictionary::readable(@words)
      results.length.should be(2)
    end
  end

  describe 'fastest' do
    it 'should search for all possibilities' do
      results = Dictionary::fastest(@words)
      results.length.should be(2)
    end
  end
  
end