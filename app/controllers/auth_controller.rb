class AuthController < ApplicationController
  include AuthHelper

  def gettoken
    # render html: params[:code]
    token = get_token_from_code params[:code]
    # render html: "Token: #{token.token}"

    session[:azure_token] = token.to_hash
    # # session[:azure_token] = token
    # # render html: "Access token saved in session cookie."
    redirect_to mail_index_url
  end
end
