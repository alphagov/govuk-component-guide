require 'component'

class ComponentController < ApplicationController

  def show
    @component = Component.get(params[:id])
  end

  def list
    @components = Component.all
  end
end
