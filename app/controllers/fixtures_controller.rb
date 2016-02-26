require 'component'

class FixturesController < ApplicationController
  def show
    @fixture = component.fixtures.find {|f|
      f.id == params[:id]
    }
  end

  def index
    @fixtures = component.fixtures
  end

  def preview
    @fixture = component.fixtures.find {|f|
      f.id == params[:fixture_id]
    }
    render layout: 'preview'
  end

private

  def component
    @component = Component.get(params[:component_id])
  end
end
