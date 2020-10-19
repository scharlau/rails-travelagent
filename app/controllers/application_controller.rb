class ApplicationController < ActionController::Base
  include SessionsHelper
  before_action :logged_in?

  def redirect_if_not_found
      logger.error "Attempt to access non-existent #{request.controller_name} #{params[:id]}"
      flash[:notice] = 'Sorry, but that doesn\'t exist.'
      redirect_to(cruises_url)
  end

end
