def cipher(my_string, shift_factor)
  # Split string into character array, get ascii value for each character 
  # 65 - 90 for A-B
  # 97 - 122 for a-b
  ascii = my_string.chars.map{|c| c.ord}
  shifted_string = ascii.map do |result|
    if result.between?(65, 90)
      # logic for wrap around
      if shift_factor.positive?
        result + shift_factor > 90 ? (result + shift_factor) - 26 : result + shift_factor
      else
        result + shift_factor < 65 ? (result + shift_factor) - 26 : result + shift_factor
      end
    elsif result.between?(97, 122)
      if shift_factor.positive?
        result + shift_factor > 122 ? (result + shift_factor) - 26 : result + shift_factor
      else
        result + shift_factor < 97 ? (result + shift_factor) - 26 : result + shift_factor
      end
    else
      result
    end
  end

  shifted_string = shifted_string.map!{|a| a.chr}.join
end

def get_phrase
  puts "Enter a word/phrase to encrypt: "
  phrase = gets.chomp()
end

def get_shift_factor
  puts "Enter a shift factor (integer): "
  shift_factor = gets.chomp().to_i
end

user_phrase = get_phrase()
user_shift_factor = get_shift_factor()

puts cipher(user_phrase, user_shift_factor)