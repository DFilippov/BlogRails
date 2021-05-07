class ApplicationController < ActionController::Base

        before_action :configure_permitted_parameters, if: :devise_controller?
        # здесь условие если :devise_controller?, то есть сработает, если это devise_controller
        # то есть контроллер, где мы используем devise (например, в articles_controller'е)

        # PRIVATE METHODS:
        private

        def configure_permitted_parameters
                # здесь зазрешаем strong parameters для username при sign up
<<<<<<< HEAD
=======
                # puts __LINE__ , "====================", devise_parameter_sanitizer.inspect
>>>>>>> improvementUI
                # devise_parameter_sanitizer.permit(:sign_up) << :username
                devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
                devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
                # devise_parameter_sanitizer.permitted(:account_update) << :username
        end
end
