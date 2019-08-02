class Book
    attr_reader :title

    def title=(title)
        title = title.capitalize
        title_split = title.split(' ')

        lowercase = ["and", "in", "the", "of", "a", "an"]
        new_title_split = []
        for word in title_split
            if !(lowercase.include?(word))
                word_cap = word.capitalize
                new_title_split.push(word_cap)
            else 
                new_title_split.push(word)
            end
        end
        @title = new_title_split.join(' ')
    end
end
