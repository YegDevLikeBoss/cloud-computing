class Call

    State = {'PENDING': 0, 'ACTIVE': 1}

    def initialize(caller, number)
        @caller1 = caller
        @caller2 = number
        @state = State['PENDING']
    end

    attr_accessor :caller1, :caller2
end