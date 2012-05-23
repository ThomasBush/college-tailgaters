require File.dirname(__FILE__) + '/../spec_helper'

describe LocCategory do
  it "should be valid" do
    LocCategory.new.should be_valid
  end
end
