require File.dirname(__FILE__) + '/../spec_helper'

module PropertyValueHelper

  def valid_property_attributes
    {
      :name => "fabric",
      :presentation => "Fabric"
    }
  end

  def valid_property_value_attributes
    {
      :name => "cotton",
      :presentation => "Cotton"
    }
  end

end
describe PropertyValue do
  include PropertyValueHelper
  
  before(:each) do
    @property = Property.create(valid_property_attributes)
    @property_value = PropertyValue.new(valid_property_value_attributes)
  end

  it "should be valid" do
    @property_value.should be_valid
  end

  it "should belong to property" do
    @property_value.save
    @property.property_values << @property_value
    @property.property_values.first.property.should == @property
  end

end
