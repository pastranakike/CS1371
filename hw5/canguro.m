function[max] =canguro(num)
    num = char(num)
    digitos = [num(1), num(2)]
    digitos = double(digitos)
    digitos = sum(digitos)
    divisor = rem(num, digitos)
end