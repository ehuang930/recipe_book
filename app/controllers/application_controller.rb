class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :courses

  def courses
  	@courses = Course.all
  end
end
