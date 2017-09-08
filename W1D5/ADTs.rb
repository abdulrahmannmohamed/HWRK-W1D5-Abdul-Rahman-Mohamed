class Stack
  def initialize
    # create ivar to store stack here!
    @stack = []
  end

  def add(el)
    # adds an element to the stack
    @stack.push(el)
  end

  def remove
    # removes one element from the stack
    @stack.pop
  end

  def show
    @stack.dup
    # return a copy of the stack
  end
end

class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.push(el)
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue.dup
  end
end

class Map
  def initialize
    @map = [][]
  end
  def assign(key, value)
    x = @map.any? {|pair| pair.first == key }
    if x
      @map[@map[key,value].index] << [key,value]
    end
  end

  def lookup(key)
    res = @map.select {|pair| pair.first == key}
    res.last
  end
end
