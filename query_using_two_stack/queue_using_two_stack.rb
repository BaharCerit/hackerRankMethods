# Enter your code here. Read input from STDIN. Print output to STDOUT
class MyQueue
  def initialize
      @enqueue_stack = []
      @dequeue_stack = []
  end

  def enqueue(x)
      @enqueue_stack.push(x)
  end

  def dequeue
      transfer_to_dequeue_stack if @dequeue_stack.empty?
      @dequeue_stack.pop
  end

  def front
      transfer_to_dequeue_stack if @dequeue_stack.empty?
      @dequeue_stack.last
  end

  private

  def transfer_to_dequeue_stack
      until @enqueue_stack.empty?
          @dequeue_stack.push(@enqueue_stack.pop)
      end
  end
end

q = gets.to_i

queue = MyQueue.new

q.times do
  query = gets.chomp.split.map(&:to_i)
  case query[0]
  when 1
    queue.enqueue(query[1])
  when 2
    queue.dequeue
  when 3
    print "output is #{queue.front}"
    exit
  end
end
