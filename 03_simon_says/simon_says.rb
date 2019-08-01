def echo(value_in)
    return value_in
end

def shout(value_in)
    return value_in.upcase
end

def repeat(value_in, num = 2)
    return ("#{value_in} " * num).strip
end

def start_of_word(str, length)
    return str[0...length]
end

def first_word(str)
    return str.split(' ')[0]
end

def titleize(str)
    str = str.capitalize
    str_arr = str.split(' ')
    output = []
    lowercase = ["and", "the", "over"]
    
    for word in str_arr
        if !lowercase.include?(word)
            word = word.capitalize
        end
        output.push(word)
    end
    output.join(' ')
end