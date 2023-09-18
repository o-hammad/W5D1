class MaxIntSet
    def initialize(max)
        @store = Array.new(max, false)
    end

    def insert(el)
        if el >= 0 && el < (@store.length - 1)
            @store[el] = true
        else
            raise "out of bounds"
        end
    end

    def remove(el)
        if el >= 0 && el < (@store.length - 1)
            @store[el] = false
        else
            raise "out of bounds"
        end
    end

    def include?(el)
        @store[el]
    end
end