class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  private

  def after_sign_in_path_for(resource)
    resource.type.eql?('Admin') ? dashboard_path : root_path
  end
end
