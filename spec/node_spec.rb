require './lib/node'
require 'rspec'

describe Node do
  before do
    @node = Node.new("plop")
  end

  it 'exists' do
    expect(@node).to be_a(Node)
  end

  it 'has data' do
    expect(@node.data).to eq("plop")
  end

  it 'has a next node' do
    expect(@node.next_node).to eq(nil)
  end
end