#pigLatin.rb
puts 'Pig Latin'

def pigLatin(original)
  vowels = ['a', 'e', 'i', 'o', 'u']
  pyg = 'ay'
    if original.length > 0 and vowels.include? original[0] and original.match(/^[[:alpha:]]+$/)
        word = original.downcase
        new_word = word + pyg
        return new_word
    elsif original.length > 0 and original.match(/^[[:alpha:]]+$/)
        word = original.downcase
        splitword = word.split(/([aeiou].*)/)
        new_word = "#{splitword[1]}#{splitword[0]}#{pyg}"
        return new_word
    else
        puts 'empty'
    end
end

program_active = true
while program_active
    puts 'Type \'quit\' to exit'
    puts 'Enter a sentence:'
    STDOUT.flush
    sentence = gets.chomp
    if sentence == 'quit'
        program_active = false
    end

    output = []

    sentArr = sentence.split(' ')

    for item in sentArr
        output.push(pigLatin(item))
        first = output.shift
        capital = first[0].upcase
        output.unshift("#{capital}#{first[1..-1]}")
        answer = output.join(' ')
      end
    puts answer
    output = []
    sentArr = []
end
