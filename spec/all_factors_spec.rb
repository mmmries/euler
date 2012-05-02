require 'spec_helper'
require File.expand_path('../lib/all_factors', File.dirname(__FILE__))

describe Integer do
  context :all_factors do
    it "should find all factors of a given integer" do
      81.all_factors.should == [-81, -27, -9, -3, -1, 1, 3, 9, 27, 81]
      127.all_factors.should == [-127, -1, 1, 127]
      128.all_factors.should == [-128, -64, -32, -16, -8, -4, -2, -1, 1, 2, 4, 8, 16, 32, 64, 128]
      534.all_factors.should == [-534, -267, -178, -89, -6, -3, -2, -1, 1, 2, 3, 6, 89, 178, 267, 534]
    end
  end
end