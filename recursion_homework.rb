require "byebug"

def sum_to(n)
    return nil if n < 0
    return 1 if n <= 1
    n += sum_to(n-1)
end


def add_numbers(nums_array)
    return nil if nums_array.length < 0
    return nums_array[0] if nums_array.length <= 1
   
    nums_array[0] += add_numbers(nums_array[1..-1])
end

def gamma_fnc(n)
    return nil if n == 0
    return 1 if n == 1
    return 2 if n == 2
    (n-1)*(gamma_fnc(n-2))
end

p gamma_fnc(0)  # => returns nil
p gamma_fnc(1)  # => returns 1
p gamma_fnc(4)  # => returns 6
p gamma_fnc(8)  # => returns 5040