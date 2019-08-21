class PigLatinizer
  
  attr_reader :text
 
  def initialize()
    @text = text
  end
  
  def piglatinize(text)
    broken_text = text.split(" ")
    result = broken_text.map {|word| piglatinize_word(word)}
    result.join(" ")
  end
  
  def piglatinize_word(sample)
    vowels = ["a","e","i","o","u","I","E","O","U"]
    word = sample.split("")
    result_array =[]

    if vowels.include? word[0]
      result_array.push word << 'way'
    else
      first_letter = word.slice!(0)
      result_array.push word << first_letter << 'ay'
    end 
    
    return result_array.join("")
    
  end
end