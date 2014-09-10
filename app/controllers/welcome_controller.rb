class WelcomeController < ApplicationController
  def index
    @components = Component.all
  end
end
