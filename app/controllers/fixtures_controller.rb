require 'component'

class FixturesController < ApplicationController

  def show
    @fixture =  component.fixtures.select {|f|
      f.id == params[:id]
    }.first
  end

  def index
    @fixtures = component.fixtures
  end

  def preview
    @fixture =  component.fixtures.select {|f|
      f.id == params[:fixture_id]
    }.first
    render layout: 'preview'
  end

private

  def component
    @component = Component.get(params[:component_id])
  end
end
