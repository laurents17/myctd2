class MyClass
    def initialize
        @my_hash={}
    end
    
    def add(key, value)
        @my_hash[key] = value
    end
    
    def render
        puts @my_hash
    end
    
    def my_array
        return @my_hash.values
    end
end

class MyClassB < MyClass
    attr_accessor :my_hash
    def add(key, value)
        # each value to be added to the hash is an integer (use the is_a? method)
        # if it is, add it to my_hash, if it isn't return false
        if value.is_a? Integer
            super(key, value)
            return true
        else
            return false
        end
    end
    
    def my_array_2
        mult_arr = self.my_array
        mult_arr.map! {|v| v*3}
        return mult_arr
    end
end
