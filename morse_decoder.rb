# decode_char
def decode_char(char)
  morse_dict = {
    '.-' => 'a', '-...' => 'b', '-.-.' => 'c', '-..' => 'd',
    '.' => 'e', '..-.' => 'f',
    '--.' => 'g', '....' => 'h',
    '..' => 'i', '.---' => 'j',
    '-.-' => 'k', '.-..' => 'l',
    '--' => 'm', '-.' => 'n',
    '---' => 'o', '.--.' => 'p',
    '--.-' => 'q', '.-.' => 'r',
    '...' => 's', '-' => 't',
    '..-' => 'u', '...-' => 'v',
    '.--' => 'w', '-..-' => 'x',
    '-.--' => 'y', '--..' => 'z',
    ' ' => ' ', '.----' => '1',
    '..---' => '2', '...--' => '3',
    '....-' => '4', '.....' => '5',
    '-....' => '6', '--...' => '7',
    '---..' => '8', '----.' => '9', '-----' => '0'
  }
  morse_dict[char]
end

def decode_word(str)
  string = str.split
  arr = []
  string1 = string.each { |i| arr.push(decode_char(i).to_s) }
  arr.join(' ')
end

def decode_phrase(str)
  phrase = str.split('   ')
  arr = []
  phrase1 = phrase.each { |i| arr.push(decode_word(i).to_s) }
  arr.join('   ')
end

decode_phrase('.... . .-.. .-.. ---   .-- --- .-. .-.. -..')
