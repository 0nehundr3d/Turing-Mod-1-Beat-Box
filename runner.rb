require './lib/beat_box'
require './lib/linked_list'
require './lib/node'
require 'pry'

bb = BeatBox.new

beats = 'deep doop dop'

bb.append(beats)

bb.play