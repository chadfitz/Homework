class Stack
    attr_reader :trays
    
    def initialize
    # create ivar (instance variable) to store stack here!
        @trays = []
    end

    def push(ele)
    # adds an element to the stack
        @trays.push(ele)
    end

    def pop
    # removes one element from the stack
        @trays.pop
    end

    def peek
    # returns, but doesn't remove, the top element in the stack
        @trays.last
    end
end