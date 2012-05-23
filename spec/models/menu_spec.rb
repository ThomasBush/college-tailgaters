require File.dirname(__FILE__) + '/../spec_helper'

describe Menu do
  it "should be valid" do
    Menu.new.should be_valid
  end
end
