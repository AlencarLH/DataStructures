class Queue
    def initialize()
        @queue = []
    end 
    
    def push(value)
        @queue[@queue.length] = value
    end

    def pop()
        if(@queue.length <= 0)
            puts('Empty queue!')
            return nil
        else
            popped_element = @queue[0]
            @queue.delete_at(0)
            puts("Removed element: #{popped_element}")
           
            return popped_element
        end
    end

    def show_queue()
        puts("Elements in the queue:")
        for i in @queue

            puts("-> #{i}")
        end
    end
end
