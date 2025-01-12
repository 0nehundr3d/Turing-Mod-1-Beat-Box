require './lib/beat_box'
require './lib/linked_list'
require './lib/node'
require 'pry'

bb = BeatBox.new

beats = 'deep doop dop'

bb.append(beats)
bb.rate = 100
bb.voice = "Daniel"

bb.reset_rate
bb.reset_voice

bb.play