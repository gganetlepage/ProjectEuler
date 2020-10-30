function isItPrime(n::Integer)
    for i in 2:n÷2
        if n%i == 0
            return false
        end
    end
    true
end

for i in 2:15
    println(i," ",isItPrime(i))
end
#=
2 true
3 true
4 false
5 true
6 false
7 true
8 false
9 false
10 false
11 true
12 false
13 true
14 false
15 false
=#

function isDivisible(n1, n2)
    n1%n2==0
end

function decompose(n)
    primeFactors = []
    evolution = [n]
    number = n
    max = n÷2
    for i in 2:max
        if isItPrime(i) && isDivisible(number, i)
            while(isDivisible(number,i))
                number /= i
                push!(primeFactors, i)
                push!(evolution, number)
                max /=i
                if number==1
                    return primeFactors, evolution
                end
            end
        end
    end
end

decompose(6) # (Any[2, 3], [6, 3, 1])

decompose(13195) # (Any[5, 7, 13, 29], [13195, 2639, 377, 29, 1])

decompose(600851475143) # (Any[71, 839, 1471, 6857], [600851475143, 8462696833, 10086647, 6857, 1])