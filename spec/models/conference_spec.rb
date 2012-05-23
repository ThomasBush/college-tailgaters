require File.dirname(__FILE__) + '/../spec_helper'

describe Conference do
  it "should be valid" do
    Conference.new.should be_valid
  end
end
