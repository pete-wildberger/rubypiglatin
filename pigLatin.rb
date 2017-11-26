#pigLatin.rb
puts 'Pig Latin'

program_active = True

def pigLatin(original):
    if len(original) > 0 and original[0] in ('a', 'e', 'i', 'o', 'u') and original.isalpha():
        word = original.lower()
        new_word = word + pyg
        return new_word
    elif len(original) > 0 and original.isalpha():
        word = original.lower()
        vowel_indices = [idx for idx, ch in enumerate(original) if ch.lower() in 'aeiou']
        splitIdx = vowel_indices[0]
        first = original[0 : splitIdx]
        new_word = word[splitIdx: len(word)] + first + pyg
        return new_word
    else:
        puts 'empty'
      end
    end
  end

while program_active:
    puts 'Type \'quit\' to exit'
    pyg = 'ay'
    puts 'Enter a sentence:'
    STDOUT.flush
    sentence = gets.chomp
    if sentence == 'quit':
        program_active = False

    output = []

    sentArr = sentence.split( )

    for item in sentArr:
        output.append(pigLatin(item))
        answer = ' '.join(output)
    puts answer
    output = []
    sentArr = []
