# Code given in task
mutable struct Node
    next::Union{Node, Nothing} # next kan peke på et Node-objekt eller ha verdien nothing.
    value::Int
end

function createlinkedlist(length)
    # Creates the list starting from the last element
    # This is done so the last element we generate is the head
    child = nothing
    node = nothing

    for i in 1:length
        node = Node(child, rand(1:800))
        child = node
    end
    return node
end

# My code
# Skriv koden din her!
function findindexinlist(linkedlist, index)
	nownode = linkedlist
	for i in 1:index
		if i == index
			return nownode.value
		elseif nownode.next == nothing
			return -1
		else
			nownode = nownode.next
		end
	end
end
