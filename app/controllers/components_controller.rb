require 'component'

class ComponentsController < ApplicationController
  def show
    @component = Component.get(params[:id]) || not_found
  end

  def index
    @components = Component.all
  end

  def preview
    @component = Component.get(params[:component_id]) || not_found
    render layout: 'preview'
  end

  def not_found
    render :file => "#{Rails.root}/public/404", :layout => false, :status => :not_found
  end
end
