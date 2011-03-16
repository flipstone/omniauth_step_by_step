require 'openid/store/filesystem'
Rails.application.config.middleware.use OmniAuth::Strategies::OpenID,
                                        OpenID::Store::Filesystem.new('/tmp/library/openid'),
                                        :name => 'google',
                                        :identifier => 'https://www.google.com/accounts/o8/id'

# Register your app by going to http://developer.twitter.com and clicked on 'Register an app'
#
# Make sure the domain of your callback url on the form matches the application location
# url.  You'll still be able to use the same app against localhost though.
#
Rails.application.config.middleware.use OmniAuth::Strategies::Twitter,
                                        "LWH598lUo9mhfvapQ4lb3A",
                                        "zSRTUAFcCnyezT8SN4WLARG372SndME3hxdfzCeemeE"


