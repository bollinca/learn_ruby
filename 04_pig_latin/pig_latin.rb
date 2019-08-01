def translate (words)
    vowels = ["a", "e", "i", "o", "u"]
    punctuation = ["!", "?", "."]
    each_word = words.split(' ')
    output = []

    for word in each_word 
        word_letters = word.split('')
        punct = ""
        if punctuation.include?(word_letters[-1])
           punct = word_letters.pop     
        end
        while !(vowels.include?(word_letters[0]))
            if word_letters[0..1] == ["q", "u"]
                word_letters = word_letters.push(word_letters.shift)
            end
            word_letters = word_letters.push(word_letters.shift)
        end
        
        if vowels.include?(word_letters[0])
            word = word_letters.join
            if punct != ""
                output.push(word + 'ay' + punct)
            else
                output.push(word + 'ay')
            end
        end
    end
    output = output.join(" ")
    if words[0] == words[0].upcase
        return output.capitalize
    end
    return output
end
