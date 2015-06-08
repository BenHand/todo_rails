class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  skip_before_action :Invalid_Authenticity_Token
end
