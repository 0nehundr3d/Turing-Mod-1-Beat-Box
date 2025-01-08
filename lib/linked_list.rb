class LinkedList
  attr_reader :head

  def append(data)
    if !@head
      @head = Node.new(data)
    else
      current_node = @head
      while true do
        if current_node.next_node == nil
          current_node.next_node = Node.new(data)
          break
        end
        current_node = current_node.next_node
      end
    end
  end

  def count
    count = 0
    current_node = @head

    while true do
      count += 1
      break if current_node.next_node == nil 
      current_node = current_node.next_node
    end

    return count
  end

  def to_string
    string = ""
    current_node = @head

    while true do
      string << current_node.data << " "
      break if current_node.next_node == nil
      current_node = current_node.next_node
    end

    return string.chop
  end
end