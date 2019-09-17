# Given code
#s = []
#push!(s, 2)
#push!(s, 5)
#println(s)    # gir lista [2,5]
#println(s[1]) # dette gir verdien 2
#x = pop!(s)
#println(x)    # dette gir verdien 5

# Min kode
# Visste du at funksjoner kan ha emoji i navnet?  💯
function reverseandlimit(array, maxnumber)
    newarray = []
    for i in 0:(length(array)-1)
        number = array[end-i]
        if number > maxnumber
            number = maxnumber
        end
        push!(newarray,number)
    end
    return newarray
end

println(reverseandlimit([2,2,6,2,8,6,9,10], 7))
