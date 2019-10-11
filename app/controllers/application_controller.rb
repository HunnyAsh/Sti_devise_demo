class ApplicationController < ActionController::Base
  private

  def after_sign_in_path_for(resource)
    binding.pry
    resource.type.eql?('Admin') ? dashboard_path : root_path
  end
end
