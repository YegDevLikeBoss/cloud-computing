class ATE
    def initialize
        @registry = Array.new
        @pending_calls = Array.new
        @calls = Array.new
    end

    def connect(number)
        if !@registry.include?(number)
            puts "ATE -> invalid number"
            return
        end
        puts "ATE -> calling %s" % number
    end

    def register(number)
        @registry.push(number)
    end
end