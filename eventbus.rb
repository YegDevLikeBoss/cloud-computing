def subscribe(subscribers, name, callback)
    if subscribers.has_key?(name)
        subscribers[name].push(callback)
    else
        subscribers[name] = [callback]
    end
    subscribers
end

def unsubscribe(subscribers, name)
    subscribers.delete(name)
end

def publish(subscribers, name)
    if !subscribers.has_key?(name)
        raise "Enent not found"
    end
    subscribers[name].each {|event| event.call}
end

subscribers = Hash.new

subscribe(subscribers, "ok", -> {puts "boomer"})
subscribe(subscribers, "ok", -> {puts "zoomer"})
subscribe(subscribers, "heres", -> {puts "johnny"})
puts subscribers
puts subscribers["ok"]
#unsubscribe(subscribers, "ok") # uncomment for test
#puts subscribers #uncomment for test
publish(subscribers, "ok")
#publish(subscribers, "heres") #uncomment for test