require_relative "ATE"

class Caller

    module State
        FREE = 1
        WAITING = 2
        BUISY = 3
    end

    def initialize(ate, number)
        ate.register(number)
        @number = number
        @state = State::FREE
    end

    def call(ate, number)
        puts "----\nPhone -> connecting to ATE"
        if ate.class != ATE
            puts "Phone -> not an ATE\n----"
        else
            puts "Phone -> connected\n----"
            ate.connect(@number, number)
        end
    end

    def decline(ate)
        puts "----\nPhone -> declining\n----"
        ate.disconnect(@number)
    end

end