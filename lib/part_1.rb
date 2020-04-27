def my_reject(arr,&prc)
    rejected=[]
    arr.each do |ele|
        if !prc.call(ele)
            rejected<<ele
        end
    end
    rejected
end

def my_one?(arr,&prc)
    counter=0
    arr.each do |ele|
        if prc.call(ele)
            counter+=1
        end
    end
    counter==1
end

def hash_select(hash, &prc)
    new_hash={}
    hash.each do |k,v|
        if prc.call(k,v)
            new_hash[k]=v
        end
    end
    new_hash
end

def xor_select(arr,prc_1,prc_2)
    arr.select {|ele| (prc_1.call(ele)||prc_2.call(ele))&& !(prc_1.call(ele) && prc_2.call(ele))}
end

def proc_count(val,arr)
    counter=0
    arr.each {|prc| counter+=1 if prc.call(val)}
    counter
end

# There u go :)