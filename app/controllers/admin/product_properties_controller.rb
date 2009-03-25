require_dependency RAILS_ROOT + '/app/controllers/admin/product_properties_controller'
class Admin::ProductPropertiesController < Admin::BaseController

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
