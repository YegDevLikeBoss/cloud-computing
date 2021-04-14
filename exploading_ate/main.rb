require_relative "ATE"
require_relative "Caller"

ate = ATE.new
c1 = Caller.new(ate, "88005555535")
c2 = Caller.new(ate, "5234635")

c1.call(ate).connect("5234635")