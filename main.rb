def caesar_cipher(string, shift_factor)
    lcase_letter_hash = ('a'.."z").each_with_index.to_h
    ucase_letter_hash = ('A'.."Z").each_with_index.to_h
    string_array = string.split("")
    result_array = string_array.map do |letter|
        if (!lcase_letter_hash.has_key?(letter) && !ucase_letter_hash.has_key?(letter))
            shifted_letter = letter
        elsif isUpCase?(letter)
            shifted_letter = ucase_letter_hash.key((ucase_letter_hash[letter] - shift_factor)%26)
        else
            shifted_letter = lcase_letter_hash.key((lcase_letter_hash[letter] - shift_factor)%26)
        end
    end

    result_string = result_array.join("")
end

def isUpCase?(letter)
    letter == letter.upcase
end

puts "Please enter your string"
string = gets.chomp

puts "Please enter your shift factor"
shift_factor = gets.chomp.to_i

puts caesar_cipher(string, shift_factor)