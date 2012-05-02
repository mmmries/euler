require 'spec_helper'
require File.expand_path('../lib/triangle_sequence', File.dirname(__FILE__))

describe TriangleSequence do
  it "should return the next triangle number" do
    ps = TriangleSequence.new
    [1, 3, 6, 10, 15, 21, 28, 36, 45, 55].each do |p|
      ps.next.should == p
    end
  end
end