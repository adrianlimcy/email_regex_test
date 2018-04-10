module AuthHelper

  # App's client ID. Register the app in Application Registration Portal to get this value.
  CLIENT_ID = ENV["MS_APP_ID"]
  # App's client secret. Register the app in Application Registration Portal to get this value.
  CLIENT_SECRET = ENV["MS_APP_PASSWORD"]

  # Scopes required by the app
  SCOPES = [ 'openid',
             'profile',
             'offline_access',
             'User.Read',
             'Mail.Read' ]

  # REDIRECT_URI = 'http://localhost:3000/authorize' # Temporary!

  # Generates the login URL for the app.
  def get_login_url
    client = OAuth2::Client.new(CLIENT_ID,
                                CLIENT_SECRET,
                                :site => 'https://login.microsoftonline.com',
                                :authorize_url => '/common/oauth2/v2.0/authorize',
                                :token_url => '/common/oauth2/v2.0/token')

    # login_url = client.auth_code.authorize_url(:redirect_uri => REDIRECT_URI, :scope => SCOPES.join(' '))
    login_url = client.auth_code.authorize_url(:redirect_uri => authorize_url, :scope => SCOPES.join(' '))
  end

  def get_token_from_code(auth_code)
    client = OAuth2::Client.new(CLIENT_ID,
                                CLIENT_SECRET,
                                :site => 'https://login.microsoftonline.com',
                                :authorize_url => '/common/oauth2/v2.0/authorize',
                                :token_url => '/common/oauth2/v2.0/token')

    token = client.auth_code.get_token(auth_code,
                                       :redirect_uri => authorize_url,
                                       :scope => SCOPES.join(' '))

     if token.expired?
       new_token = token.refresh!
       # Save new token
       session[:azure_token] = new_token.to_hash
       # access_token = new_token.token
       # session[:azure_token] = new_token
       access_token = new_token
     else
       # access_token = token.token
       access_token = token
     end
   end
end
