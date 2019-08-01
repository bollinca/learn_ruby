def add(num1, num2)
    return num1 + num2
end

def subtract(num1, num2)
    return num1 - num2
end

def sum(nums)
    sum = 0
    nums.each do |num|
        sum += num
    end
    return sum
end

def multiply(nums)
    sum = 1
    nums.each do |num|
        sum *= num
    end
    return sum
end

def power(num1, num2)
    return num1 ** num2
end

def factorial(num)
    solution = num
    if num == 0 || num == 1
        solution = 1
    end
    while num > 1
        solution *= (num - 1)
        num = num - 1
    end
    return solution
end