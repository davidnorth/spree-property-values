require File.dirname(__FILE__) + '/../spec_helper'

module PropertyWithPropertyValuesHelper
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


describe "property with property values extension" do
  include PropertyWithPropertyValuesHelper
  
  before(:each) do
    @property = Property.create(valid_property_attributes)
    @property_value = PropertyValue.new(valid_property_value_attributes)
  end

  it "should allow property values to be assigned" do
    @property.should be_valid
    @property.property_values << @property_value
    @property.property_values.first.should == @property_value
  end

end
