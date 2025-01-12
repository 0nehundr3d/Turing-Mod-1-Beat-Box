class BeatBox 
  attr_reader :list
  attr_accessor :rate, :voice

  def initialize
    @list = LinkedList.new
    @inputs = ['tee', 'hee', 'deep', 'dop', 'doop', 'la', 'na']

    @rate = 500
    @voice = "Boing"
  end

  def all
    @list.to_string
  end

  def append(string)
    str_array = string.split(" ")
    str_array.each { |string| @list.append(string) if @inputs.include?(string) }
  end

  def prepend(string)
    str_array = string.split(" ").reverse
    str_array.each { |string| @list.prepend(string) if @inputs.include?(string) }
  end

  def play
    `say -r #{@rate} -v #{@voice} #{all}`
  end

  def reset_rate
    @rate = 500
    @rate
  end

  def reset_voice
    @voice = "Boing"
    @voice
  end
end