class PropertyValue < ActiveRecord::Base
  belongs_to :property
  acts_as_list :scope => :property

end
