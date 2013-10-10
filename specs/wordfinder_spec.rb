require_relative '../dictionary_helper'

describe 'dictionary' do
  before(:each) do
    @dictionary = Dictionary::read File.path('test_dictionary.txt')
  end
  describe 'read_file' do
    it 'should return an array for dictionary' do
      @dictionary.length.should eq(17)
    end

    it 'should return a message if the path is empty' do
      lambda{ output = Dictionary::read nil }.should raise_error SystemExit
    end
  end

  describe 'sort_file' do
  
    it 'should return an sorted array' do
      words = Dictionary::sort @dictionary
      words.class.should be(Hash)
    end
  end
end