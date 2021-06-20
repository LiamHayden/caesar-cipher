# Takes in a string and shift factor and returns the modified string

def caesar_cipher(string, shift_factor)
    arr = string.split('')
    result = []
    arr.each { |letter| result.push((letter.ord + shift_factor).chr)}
    result.join("")
end 

puts caesar_cipher("What a string!", 5)
