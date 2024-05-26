def caesar_cipher(string, shift_factor)
  result_array = string.chars.map do |char|
    if char.match?(/[[:alpha:]]/)
      shift_letter(char, shift_factor)
    else
      char
    end
  end

  result_array.join
end

def shift_letter(char, shift_factor)
  high_code = (char.ord > 90) ? 122 : 90
  new_char_num = char.ord + (shift_factor % 26)
  new_char_num = (new_char_num - 26) unless new_char_num <= high_code
  new_char_num.chr
end

puts "Please enter your string"
string = gets.chomp

puts "Please enter your shift factor"
shift_factor = gets.chomp.to_i

puts caesar_cipher(string, shift_factor)
