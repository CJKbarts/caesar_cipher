def caesar_cipher(string, shift_factor)
  result_array = string.chars.map do |char|
    if char.match?(/[a-z]/)
      shift_letter(char, 122, shift_factor)
    elsif char.match?(/[A-Z]/)
      shift_letter(char, 90, shift_factor)
    else
      char
    end
  end

  result_array.join
end

def shift_letter(char, high_code, shift_factor)
  new_char_num = char.ord + (shift_factor % 26)
  new_char_num = (new_char_num - 26) unless new_char_num < (high_code + 1)
  new_char_num.chr
end

puts "Please enter your string"
string = gets.chomp

puts "Please enter your shift factor"
shift_factor = gets.chomp.to_i

puts caesar_cipher(string, shift_factor)
