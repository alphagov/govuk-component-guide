class ComponentController < ApplicationController
  def show
    @component_name = params[:name]
    render :status => 404 unless available_components.has_key?(@component_name)

    @component = available_components[@component_name]
    @component_params = @component[:params]
  end

  def list
    @components = available_components
  end

private
  def available_components
    {
        "beta_label" => {}
    }
  end
end
