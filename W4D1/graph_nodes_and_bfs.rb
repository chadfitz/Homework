class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
        self.val = val
        self.neighbors = []
    end
end


def bfs(starting_node, target_val)#, visited = Set.new() )
    return starting_node if starting_node.val == target_val
    queue = [starting_node]

    #visited.add(starting_node.val)

    until queue.empty?
        # starting_node = queue.pop
        # return node if node.value == target_value
        # starting_node.neighbors.each {|neighbor| queue.unshift(neighbor)}
        # bfs(starting_node, target_val, visited)
        node = queue.pop
        return node if node.val == target_val
        node.neighbors.each {|neighbor| queue.unshift(neighbor)}
    end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a, "b")