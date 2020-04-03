# Your code goes here!
class Anagram
  attr_accessor :word
  
    def initialize(word)
      @word = word
    end
    
    def match(array)
      arr_split = array.map {|word| word.split("")}
      word_split = @word.split("")
      new_arr = []
      words = arr_split.collect do |word| 
        if word.size == word_split.size
          new_arr << word 
        end  
      end
      result = new_arr.collect do |word|
        (word & word_split).flat_map {|n|[n]*[word.count(n), word_split.count(n)].min}.join('')
      end
      results = []
      word_split_size = word_split.join("").size
      result.map do |each| 
        if each.size == word_split_size 
          results << each
        end
      end
      results
    end
end