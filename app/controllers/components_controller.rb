require 'component'

class ComponentsController < ApplicationController

  def show
    @component = Component.get(params[:id])
  end

  def index
    @components = Component.all
  end

  def preview
    @component = Component.get(params[:component_id])
    render layout: 'preview'
  end
end
