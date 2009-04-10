# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class PropertyValuesExtension < Spree::Extension
  version "1.0"
  description "Modify product properties to allow selection from a list rather than free text entry"
  url "http://www.github.com/davidnorth/spree-property-values"

  # Please use property_values/config/routes.rb instead for extension routes.

  # def self.require_gems(config)
  #   config.gem "gemname-goes-here", :version => '1.2.3'
  # end
  
  def activate

    Product.class_eval do
      accepts_nested_attributes_for :product_properties, :allow_destroy => true
    end

    Property.class_eval do
      has_many :property_values, :attributes => true, :dependent => :destroy
      accepts_nested_attributes_for :property_values, :allow_destroy => true
    end
    
    Admin::ProductPropertiesController.class_eval do

      create.response do |wants|
        wants.html { redirect_to collection_url }
      end

      def update_all
        @product = parent_object
        @product.product_properties_attributes = params[:product][:product_properties_attributes]
        @product.save!
        flash[:notice] = "Properties updated"
        redirect_to collection_url
      end

    end

  end
end