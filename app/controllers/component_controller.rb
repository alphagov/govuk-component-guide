class ComponentController < ApplicationController

  def show
    @component = get_component(params[:id])

    @component_fixture = {}
    if @component["fixtures"].any?
      @component_fixture = @component["fixtures"].values.first.with_indifferent_access
    end
  end

  def list
    @components = available_components
  end

private

  def get_component(id)
    available_components.select {|component| component['id'] == id }.first
  end

  def available_components
    Rails.cache.fetch('component_doc', expires_in: 15.minute) {
      fetch_component_doc
    }
  end

  def component_doc_url
    Plek.current.find('static') + '/templates/govuk_component/docs'
  end

  def fetch_component_doc
    JSON.parse(RestClient.get(component_doc_url).body)
  end
end
