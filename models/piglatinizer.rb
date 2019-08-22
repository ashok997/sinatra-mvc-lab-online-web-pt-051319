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
    result_array =[]

    if vowels.include? sample[0]
      result_array.push sample << 'way'
    elsif vowels.include? sample[1]
      first_letter = sample.slice!(0)
      result_array.push sample << first_letter << 'ay'
    elsif vowels.include? sample[2]
      first_two = sample.slice!(0..1)
      result_array.push sample << first_two << 'ay'
    else
      first_three = sample.slice!(0..2)
      result_array.push sample << first_three << 'ay'
    end 
    
    return result_array.join("")
    
  end
end

