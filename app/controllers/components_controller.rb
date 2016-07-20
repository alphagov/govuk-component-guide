require 'component'

class ComponentsController < ApplicationController
  def show
    @component = Component.get(params[:id])
    head :not_found if @component.nil?
  end

  def index
    @components = Component.all
  end

  def preview
    @component = Component.get(params[:component_id])
    if @component.nil?
      head :not_found
    else
      render layout: 'preview'
    end
  end
end
