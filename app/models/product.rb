require_dependency RAILS_ROOT + '/app/models/product'
class Product < ActiveRecord::Base

  accepts_nested_attributes_for :product_properties, :allow_destroy => true
  
end