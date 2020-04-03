# Your code goes here!
class Anagram
  attr_accessor :word
  
    def initialize(word)
      @word = word
    end
    
    def match(array)
      split_arr = array.map {|word| word.split("")}
     
      word = @word.split("")
      new_arr = []
      split_arr.select do |arr| 
        new_arr << arr & word == arr && arr.length == word.length
        new_arr
      end
      new_arr.map {|word| word.join("")}
    end
end