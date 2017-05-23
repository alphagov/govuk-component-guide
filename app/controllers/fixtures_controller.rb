require 'component'

class FixturesController < ApplicationController
  def show
    @fixture = component.fixtures.find { |f|
      f.id == params[:id]
    }
    head :not_found if @fixture.nil?
  end

  def index
    @fixtures = component.fixtures
  end

  def preview
    @fixture = component.fixtures.find { |f|
      f.id == params[:fixture_id]
    }
    if @fixture.nil?
      head :not_found
    else
      render layout: 'preview'
    end
  end

private

  def component
    @component = Component.get(params[:component_id])
  end
end
