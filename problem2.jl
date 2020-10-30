"Naive fibanocci implementation"
function fibonacci(n::Integer)
    if n<=2
        return "enter a n ≥ 3"
    end
    fiboSequence = zeros(Integer,n)
    fiboSequence[1] = 1
    fiboSequence[2] = 2
    for i in 3:n
        fiboSequence[i]=fiboSequence[i-1]+fiboSequence[i-2]
    end
    fiboSequence
end

list = fibonacci(10)
list[end]



function fibonacciByUB(upperBound)
    fiboSeq = [1,2]
    while fiboSeq[end] <= upperBound
        push!(fiboSeq, fiboSeq[end]+fiboSeq[end-1])
    end
    popat!(fiboSeq,length(fiboSeq))
    fiboSeq
end

fibo = fibonacciByUB(4_000_000)
#=
32-element Array{Int64,1}:
       1
       2
       3
       5
       8
      13
      21
       ⋮
  317811
  514229
  832040
 1346269
 2178309
 3524578
 =#


function removeOddNumbers(array)
    evenFibonacci = []
    for i in 1:length(array)
        if array[i]%2==0
            push!(evenFibonacci,array[i])
        end
    end
    evenFibonacci
end

fiboEven = removeOddNumbers(fibo)
#=
11-element Array{Any,1}:
       2
       8
      34
     144
     610
    2584
   10946
   46368
  196418
  832040
 3524578
 =#
 
 sum(fiboEven) # 4613732
