require File.dirname(__FILE__) + '/../spec_helper'

describe Division do
  it "should be valid" do
    Division.new.should be_valid
  end
end
