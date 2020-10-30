function multiples(f,upperBound)
    multi = BitSet()
    x = 1
    while f(x)<upperBound
        push!(multi,f(x))
        x += 1
    end
    multi
end 

function sumMultiples(number1, number2, upperBound)
    set1 = multiples(x->number1*x, upperBound)
    set2 = multiples(x->number2*x, upperBound)
    sum(union(set1,set2))
end

ub = 1000
sumMultiples(3,5,ub) # 233168

# More concise implementation:

function multiples2(number,upperBound)
    map(x-> number*x,1:(upperBound-1)÷number)
end

function sumMultiples2(number1, number2, upperBound)
    set1 = multiples2(number1,upperBound)
    set2 = multiples2(number2,upperBound)
    sum(union(set1,set2))
end

sumMultiples2(3,5,ub) # 233168
