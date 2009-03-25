# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class PropertyValuesExtension < Spree::Extension
  version "1.0"
  description "Modify product properties to allow selection from a list rather than free text entry"
  url "http://www.github.com/davidnorth/property_values"

  # Please use property_values/config/routes.rb instead for extension routes.

  # def self.require_gems(config)
  #   config.gem "gemname-goes-here", :version => '1.2.3'
  # end
  
  def activate
    # admin.tabs.add "Property Values", "/admin/property_values", :after => "Layouts", :visibility => [:all]
  end
end