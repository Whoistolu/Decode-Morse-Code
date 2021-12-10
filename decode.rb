MORSE_CODE = { 
   '.-'=>     'a',
   '-...'=>   'b',
   '-.-.'=>   'c',
   '-..'=>    'd',
   '.'=>      'e',
   '..-.'=>   'f',
   '--.'=>    'g',
   '....'=>   'h',
   '..'=>     'i',
   '.---'=>   'j',
   '-.-'=>    'k',
   '.-..'=>   'l',
   '--'=>     'm',
   '-.'=>     'n',
   '---'=>    'o',
   '.--.'=>   'p',
   '--.-'=>   'q',
   '.-.'=>    'r',
   '...'=>    's',
   '-'=>      't',
   '..-'=>    'u',
   '...-'=>   'v',
   '.--'=>    'w',
   '-..-'=>   'x',
   '-.--'=>   'y',
   '--..'=>   'z',
}.freeze;

def decode_word (code)
    
    result = ""
    code = code.split(" ")
    code.each { |key|
       result += MORSE_CODE[key]
    }
    return result.upcase
end
    
def decode (str)
   result = ''
   str.strip.tr('/', " ").split('  ').each do |n|
      arr = []
      n.split.each do |n|
         arr.push(MORSE_CODE[n])
      end
      result += "#{arr.join} "
   end
      return result.upcase
end

puts decode_word('.-')
puts decode_word('-- -.--')
puts decode('-- -.--   -. .- -- .')
puts decode("      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...")