class Node
    attr_accessor :value, :next

    def initialize(value)
        @value = value
        @next = nil
    end
end

class LinkedList
    def initialize()
        @size = 0
        @head = nil
    end

    def append(value)
        if (@head == nil)
            @head = Node.new(value)
        else
            aux = @head
            while(aux.next != nil)
                aux = aux.next
            end
            aux.next = Node.new(value)
        end
        @size += 1
    end

    def show_list()
        aux = @head
        while(aux != nil)
            puts("-> #{aux.value}")
            aux = aux.next
        end
    end

    def is_empty()
        @size <= 0? true : false
    end

    def remove(value)

        if(is_empty())
            puts("List is already empty!")
            return nil
        else if (@head.value == value)
            @head = @head.next
            @size = @size - 1
            return
        end

        aux = @head.next
        prev = @head
            
        while (aux!= nil)
            if(aux.value == value)
                prev.next = aux.next
                @size -=1
                return
            end        

            prev = aux
            aux = aux.next
        end
    end
end

end



