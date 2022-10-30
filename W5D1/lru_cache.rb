class LRUCache
    attr_reader :cache

    def initialize
        @cache = []
    end

    def count
      # returns number of elements currently in cache
      @cache.length
    end

    def add(el)
      # adds element to cache according to LRU principle
      cache.delete(el)
      cache.push(el)
      cache.shift if self.count > 4
    end

    def show
      # shows the items in the cache, with the LRU item first
      cache
    end

    private
    # helper methods go here!

  end