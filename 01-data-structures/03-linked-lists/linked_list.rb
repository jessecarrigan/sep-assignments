require_relative 'node'

class LinkedList
  attr_accessor :head
  attr_accessor :tail

  # This method creates a new `Node` using `data`, and inserts it at the end of the list.
  def add_to_tail(node)
    if @head.nil? # List is empty
      @head = node
      @tail = node
    elsif @head.next.nil? # List has one element
      @head.next = node
      @tail = node
    else
      @tail.next = node
      @tail = @tail.next
    end
  end

  # This method removes the last node in the lists and must keep the rest of the list intact.
  def remove_tail
    current = @head
    if @head == @tail
      @head = nil
      @tail = nil
    else
      while current.next != @tail
        current = current.next
      end
      @tail = current
    end
  end

  # This method prints out a representation of the list.
  def print
  end

  # This method removes `node` from the list and must keep the rest of the list intact.
  def delete(node)
  end

  # This method adds `node` to the front of the list and must set the list's head to `node`.
  def add_to_front(node)
  end

  # This method removes and returns the first node in the Linked List and must set Linked List's head to the second node.
  def remove_front
  end
end