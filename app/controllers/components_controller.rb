require 'component'

class ComponentsController < ApplicationController

  def show
    @component = Component.get(params[:id])
  end

  def index
    @components = Component.all
  end
end
