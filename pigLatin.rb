#pigLatin.rb
puts 'Pig Latin'

program_active = TRUE
vowels = ['a', 'e', 'i', 'o', 'u']

def pigLatin(original)
    if original.length > 0 and vowels.include? original[0] and original.match(/^[[:alpha:]]+$/)
        word = original.downcase
        new_word = word + pyg
        return new_word
    elsif original.length > 0 and original.match(/^[[:alpha:]]+$/)
        word = original.downcase
        splitword = word.split(/([aeiou].*)/)
        new_word = splitword[1] + splitword[0] + pyg
        return new_word
    else
        puts 'empty'
    end
end

while program_active
    puts 'Type \'quit\' to exit'
    pyg = 'ay'
    puts 'Enter a sentence:'
    STDOUT.flush
    sentence = gets.chomp
    if sentence == 'quit'
        program_active = FALSE
    end

    output = []

    sentArr = sentence.split(' ')

    for item in sentArr
        output.append(pigLatin(item))
        answer = ' '.join(output)
      end
    puts answer
    output = []
    sentArr = []
end
