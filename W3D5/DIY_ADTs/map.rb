class Map
    attr_reader :my_map

    def initialize
        @my_map = []
    end
    
    def set(key,value)
        @my_map.each { |pair| pair[-1] = value if pair[0] == key }
        unless @my_map.include?([key, value])
            @my_map << [key, value]
        end
    end

    def get(key)
        @my_map.each do |pair|
            if pair.first == key
                return pair
            end
        end
        false
    end

    def delete(key)
        @my_map.each do |pair|
            if pair.first == key
                @my_map.delete(pair)
                return "deleted #{key}"
            end
        end
        false
    end

    def show
        @my_map
    end
end