def caesar_cipher(string, shift)
    phrase = string.downcase
    phrase = phrase.split('')
    
    encoded_phrase = phrase.map do |elements| 
      elements = elements.ord
      unless elements.between?(32, 47) || elements.between?(58, 64) || elements.between?(91, 96) || elements.between?(123, 127)
        elements = elements.ord + shift
          if elements >= 122
            total = elements - 122
            elements = 97 + (total - 1)
            elements.chr
          else elements.chr
          end
      else 
        elements = elements.chr
        elements = elements
    end
    end
    puts encoded_phrase.join("")
    end
    
caesar_cipher("What a string!", 5)