@morse_hash = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z'
}

def decode_letter(letter)
  current_letter = @morse_hash[letter]
  current_letter.upcase
end

def decode_word(word)
  letters_array = word.split
  decoded_letters = letters_array.map { |letter| decode_letter(letter) }
  decoded_word = decoded_letters.reduce { |accum, letter| accum + letter }
  decoded_word.upcase
end

def decode_message(message)
  word_array = message.split('   ')
  decode_message = word_array.map { |word| decode_word(word) }
  decode_phrase = decode_message.reduce { |accum, word| accum + ' ' + word }
  puts decode_phrase
end

decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
