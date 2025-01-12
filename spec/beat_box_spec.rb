require './lib/linked_list'
require './lib/node'
require './lib/beat_box'
require 'rspec'

describe BeatBox do
  before do
    @bb = BeatBox.new
  end

  describe '#initialize' do
    it 'exists' do
      expect(@bb).to be_a(BeatBox)
    end

    it 'has a linked list' do
      expect(@bb.list).to be_a(LinkedList)
    end
  end

  describe '#append' do
    it 'can append nodes' do
      sounds = 'deep doop dop'
      @bb.append(sounds)
      expect(@bb.list.head.data).to eq('deep')
      expect(@bb.list.to_string).to eq('deep doop dop')
    end
  end

  describe '#all' do
    it 'can render all nodes as a string' do
      @bb.append('deep doop dop')

      expect(@bb.all).to eq('deep doop dop')
    end
  end

  describe '#prepend' do
    it 'can prepend nodes' do
      @bb.append('deep doop dop')
      @bb.prepend('tee hee hee')

      expect(@bb.all).to eq('tee hee hee deep doop dop')
    end
  end
end