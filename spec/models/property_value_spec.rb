require File.dirname(__FILE__) + '/../spec_helper'

describe PropertyValue do
  before(:each) do
    @property_value = PropertyValue.new
  end

  it "should be valid" do
    @property_value.should be_valid
  end
end
