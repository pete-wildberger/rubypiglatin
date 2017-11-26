#pigLatin.rb
puts 'Pig Latin'

#takes in a word, splits it at the vowels, and rearranges it, and returns a piglatin word.
def pigLatin(original)
  #local variables
  vowels = ['a', 'e', 'i', 'o', 'u']
  pyg = 'ay'
  # checks if there is a first letter and if it's a vowel
    if original.length > 0 and vowels.include? original[0] and original.match(/^[[:alpha:]]+$/)
        word = original.downcase
        new_word = word + pyg
        return new_word
  # checks if there is a first letter and if it's a consonant
    elsif original.length > 0 and original.match(/^[[:alpha:]]+$/)
        word = original.downcase
        # special 'qu' case
          if word[0] == 'q'
            splitword = [word[0..1], word[2..-1]]
          else
            splitword = word.split(/([aeiou].*)/)
          end
        new_word = "#{splitword[1]}#{splitword[0]}#{pyg}"
        return new_word
  # if the input is empty it returns empty
    else
        puts 'empty'
    end
end
# old-school program while loop.  The program will continue until the use types 'quit'
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
# iterates through the sentence array
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
