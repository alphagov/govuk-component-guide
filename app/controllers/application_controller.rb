class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include Slimmer::GovukComponents
  include Slimmer::Headers

  before_filter :set_custom_slimmer_headers

private

  def set_custom_slimmer_headers
    set_slimmer_headers(report_a_problem: 'false', remove_search: true)
  end
end
