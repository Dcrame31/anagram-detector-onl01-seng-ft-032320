# Your code goes here!
class Anagram
  attr_accessor :word
  
    def initialize(word)
      @word = word
    end
    
    def match(array)
      new_arr = []
      arr_split = array.map {|word| word.split("")}
      word_split = @word.split("")
      words = arr_split.collect do |word| 
        (word & word_split).flat_map {|n|[n]*[word.count(n), split_word.count(n)].min}.join('') 
      end

      word_split_size = word_split.join("").size
      words.map do |each|
        if each.size == word_split_size
          new_arr << each
        end
      end
      new_arr
    end
end