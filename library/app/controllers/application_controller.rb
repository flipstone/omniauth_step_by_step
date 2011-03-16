class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :establish_identity

  protected

  def establish_identity
    if session[:identity_id]
      @identity = Identity.where(id: session[:identity_id]).first
    end
  end
end
