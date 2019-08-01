def translate (words)
    vowels = ["a", "e", "i", "o", "u"]
    each_word = words.split(' ')
    output = []

    for word in each_word 
        word_letters = word.split('')
        
        while !(vowels.include?(word_letters[0]))
            if word_letters[0..1] == ["q", "u"]
                word_letters = word_letters.push(word_letters.shift)
            end
            word_letters = word_letters.push(word_letters.shift)
        end
        
        if vowels.include?(word_letters[0])
            word = word_letters.join
            output.push(word + 'ay')
        end
    end
    return output.join(" ")
end
