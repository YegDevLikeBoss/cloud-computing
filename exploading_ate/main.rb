require_relative "ATE"
require_relative "Caller"

ate = ATE.new
c1 = Caller.new(ate, "88005555535")
c2 = Caller.new(ate, "5234635")
c3 = Caller.new(ate, "88005555536")

c2.call(ate, "88005555532")
c1.call(ate, "5234635")
c3.call(ate, "88005555535")

c1.decline(ate)