class Node
  attr_reader :data, :next_node
  attr_writer :next_node

  def initialize(data)
    @data = data
  end

end