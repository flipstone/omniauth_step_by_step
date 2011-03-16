class AuthController < ApplicationController
  def callback
    @identity = Identity.where(:uid => request.env['omniauth.auth']['uid'],
                               :provider => request.env['omniauth.auth']['provider']).first

    if @identity.nil?
      @identity = Identity.create! :uid => request.env['omniauth.auth']['uid'],
                                   :provider => request.env['omniauth.auth']['provider'],
                                   :name =>request.env['omniauth.auth']['user_info']['name']
      @new_identity = true
    end
    session[:identity_id] = @identity.id
  end

  def failure
    @message = params[:message] || 'Unknown'
  end
end
