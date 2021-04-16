require_relative 'Call'

class ATE
    def initialize
        @registry = Array.new
        @calls = Array.new
    end

    def connect(caller, number)
        if !@registry.include?(number)
            puts "ATE -> invalid number"
            return
        end
        @calls.push(Call.new(caller, number))
        puts "ATE -> calling %s" % number
        if @calls.select {|call| call.caller1 == number}.length > 0
            puts "ATE -> number %s is bussy" % number
            @calls.pop(@calls.index(@calls.select {|call| call.caller1 == caller}[0]))
            puts "ATE -> disconnected\n----\n\n"
            return
        end
        puts "ATE -> in call\n----\n\n"
    end

    def disconnect(caller)
        puts "ATE -> declining"
        @calls.pop(@calls.index(@calls.select {|call| call.caller1 == caller}[0]))
        puts "ATE -> call ended\n----\n\n"
    end

    def register(number)
        @registry.push(number)
    end
end