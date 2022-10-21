class Queue
    attr_reader :line

    def initialize
        @line = []
    end

    def enqueue(ele)
        @line.unshift(ele)
    end

    def dequeue
        @line.pop
    end

    def peek
        @line.last
    end
end