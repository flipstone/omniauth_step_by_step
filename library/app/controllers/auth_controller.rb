class AuthController < ApplicationController
  def callback
    @identity = Identity.create! uid: request.env['omniauth.auth']['uid'],
                                 provider: request.env['omniauth.auth']['provider'],
                                 name: request.env['omniauth.auth']['user_info']['name']
    session[:identity_id] = @identity.id
  end
end
