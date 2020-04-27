def proper_factors(num)
    factors=(1...num).to_a
    factors.select {|fact| num % fact == 0}
end

def aliquot_sum(num)
    proper_factors(num).sum
end

def perfect_number?(num)
    if num==aliquot_sum(num)
        return true
    else
        return false
    end
end

def ideal_numbers(n)
    counter=0
    i=1
    ideal_nums=[]
    while counter<n
        if perfect_number?(i)
            counter+=1
            ideal_nums<<i
        end
        i+=1
    end
    ideal_nums
end

# watch out for typos