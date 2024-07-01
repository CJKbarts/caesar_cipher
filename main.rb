require_relative 'lib/caesar_cipher'

print 'Please enter your string: '
string = gets.chomp

print 'Please enter your shift factor: '
shift_factor = gets.chomp.to_i

puts caesar_cipher(string, shift_factor)
