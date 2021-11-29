class ApplicationController < ActionController::Base
  def authenticate_admin
    authenticate_or_request_with_http_basic('Admin') do |name, password|
      name == Settings.basic_auth.key && password == Settings.basic_auth.password
    end
  end
end
