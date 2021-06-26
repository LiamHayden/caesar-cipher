# Takes in a string and shift factor and returns the modified string

def caesar_cipher(string, shift_factor)
    arr = string.split('')
    result = []
    arr.each { |letter| 
        if letter.ord.between?(65, 90)
            result.push((((letter.ord - 65) + shift_factor) % 26 + 65).chr) 
        elsif letter.ord.between?(97, 122)
            result.push((((letter.ord - 97) + shift_factor) % 26 + 97).chr)
        else 
            result.push(letter)
        end 
    }
    result.join("")
end 

puts caesar_cipher("What a string!", 5)
