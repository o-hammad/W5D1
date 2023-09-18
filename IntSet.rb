class IntSet
    def initialize
        @store = Array.new(20) { Array.new }
    end

    def [](n)
        @store[n % 20]
    end

    def add(n)
        @store[n] << n if !@store[n].include?(n)
    end

    def print
        p @store
    end
end

intset = IntSet.new
intset.add(10)
intset.add(10)
intset.print