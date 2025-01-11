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

  def prepend(data)
    node = Node.new(data)
    node.next_node = @head
    @head = node
  end

  def insert(position, data)
    node = Node.new(data)
    current_node = @head

    if position <= 0
      prepend(data)
      return
    end

    (position - 1).times do
      current_node = current_node.next_node
    end

    following_nodes = current_node.next_node
    current_node.next_node = node
    node.next_node = following_nodes
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