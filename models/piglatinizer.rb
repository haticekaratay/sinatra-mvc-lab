class PigLatinizer
    attr_reader :sentence
    

    def is_first_letter_vowel?(word)
        "aeiouAEIOU".split("").include?(word[0]) ? true : false
    end

       
    def latinize_vowel_word(word)
        new_word = word +"way"
    end

    def latinize_consonent_word(word)
        letter = word.split('').find{|l| 'aeiou'.split('').include?(l.downcase)}
        vowel_idx = word.split('').index(letter)
        pre_vowel = word[0..vowel_idx-1]
        vowel_start = word[vowel_idx..-1]
        vowel_start+ pre_vowel + "ay"
    end
  
        
    def piglatinize(sentence)
        new_sentence = []
        sentence.split(" ").each do |word|
            if is_first_letter_vowel?(word)
                new_sentence << latinize_vowel_word(word)
            else 
                new_sentence << latinize_consonent_word(word)
            end
        end
        new_sentence.join(" ")
    end


end
