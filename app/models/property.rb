require_dependency RAILS_ROOT + '/app/models/property'
class Property < ActiveRecord::Base
  
  has_many :property_values, :attributes => true
  
  accepts_nested_attributes_for :property_values, :allow_destroy => true
  
end
