class ListNode
  attr_accessor :val, :next
  def initialize(val)
      @val = val
      @next = nil
  end
end

def merge_lists(head1, head2)
  return head2 if head1.nil?
  return head1 if head2.nil?

  ans = ListNode.new(-1)
  mptr = ans

  while head1 && head2
      if head1.val <= head2.val
          mptr.next = head1
          mptr = head1
          head1 = head1.next
      else
          mptr.next = head2
          mptr = head2
          head2 = head2.next
      end
  end

  mptr.next = head1 if head1
  mptr.next = head2 if head2

  return ans.next
end

# Read input from STDIN
t = gets.chomp.to_i

t.times do
  n1 = gets.chomp.to_i
  head1 = nil
  prev1 = nil

  n1.times do
      val = gets.chomp.to_i
      node = ListNode.new(val)
      if head1.nil?
          head1 = node
      else
          prev1.next = node
      end
      prev1 = node
  end

  n2 = gets.chomp.to_i
  head2 = nil
  prev2 = nil

  n2.times do
      val = gets.chomp.to_i
      node = ListNode.new(val)
      if head2.nil?
          head2 = node
      else
          prev2.next = node
      end
      prev2 = node
  end

  merged_head = merge_lists(head1, head2)

  # Print the merged linked list
  while merged_head
      print "#{merged_head.val} "
      merged_head = merged_head.next
  end
  puts
end
