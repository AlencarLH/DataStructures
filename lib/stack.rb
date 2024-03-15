class Stack
    def initialize()
        @stack = []
        @size = 0
    end
    
    def push(value)
        @stack[@stack.length] = value
        @size= @size+1
    end

    def pop()
        if(@size <= 0)
            puts("\nStack is already empty!")
            return nil
        else
            element = @stack[@stack.length-1]
            @stack.delete_at(@stack.length - 1)
            @size = @size-1
           
            return element
        end 
    end    

    def show_stack()
        for i in @stack
            puts(i)
        end
        puts("\n Stack size: #{@stack.length}")
    end
    
end