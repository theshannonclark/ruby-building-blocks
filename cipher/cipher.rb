def caesar_cipher(text, factor)
    letters = text.split("")
    letters = letters.map do |letter|
        if letter.downcase < "a" or letter.downcase > "z"
            letter
        elsif /[[:upper:]]/.match(letter) != nil
            shift_letter(letter, 6, "A")
        else
            shift_letter(letter, 6, "a")
        end
    end
    return letters.join("")
end

def shift_letter(letter, factor, offset)
    ((((letter.ord - offset.ord) + factor) % 26) + offset.ord).chr
end

puts "Enter text to encode: "
text = gets.chomp

puts caesar_cipher(text, 5)
