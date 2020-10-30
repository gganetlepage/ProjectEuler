x = 789

X = string(x)
reverseX = ""
for i in 1:length(X)
    reverseX = string(reverseX,X[length(X)-i+1])
end
reverseX # "987"
parse(Int,reverseX) # 987b

function reverse(number)
    x = string(number)
    lenX = length(x)
    reversedX = ""
    for i in 1:lenX
        reversedX = string(reversedX,x[lenX + 1 - i])
    end
    parse(Int,reversedX)
end

reverse(9245) # 5429
reverse(1000) # 1

function isPalindrome(n1, n2)
    number = n1 * n2
    number == reverse(number)
end

#TODO