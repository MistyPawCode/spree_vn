module Spree
  class UserConfirmationsController < Devise::ConfirmationsController
    include Spree::Core::ControllerHelpers::Auth
    include Spree::Core::ControllerHelpers::Store

    protected

    def after_confirmation_path_for(resource_name, resource)
      spree.root_path
    end
  end
end
