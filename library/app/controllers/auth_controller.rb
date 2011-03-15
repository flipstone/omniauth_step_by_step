class AuthController < ApplicationController
  def callback
    @omniauth = request.env['omniauth.auth']
  end
end
