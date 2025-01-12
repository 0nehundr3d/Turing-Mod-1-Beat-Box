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
end