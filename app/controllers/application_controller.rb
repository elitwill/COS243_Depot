class ApplicationController < ActionController::Base
  before_action :set_i18n_locale_from_params
  # ...
  before_action :authorize

    # ...

  protected

    def authorize
      if [Mime[:html], Mime[:turbo_stream]].include? request.format
        unless User.find_by(id: session[:user_id])
          redirect_to login_url, notice: "Please log in"
        end
      else
        authenticate_or_request_with_http_basic do |username, password|
          user = User.find_by(name: username)
          user && user.authenticate(password)
        end
      end
    end

    def set_i18n_locale_from_params
      if params[:locale]
        if I18n.available_locales.map(&:to_s).include?(params[:locale])
          I18n.locale = params[:locale]
          #NEW - stores the locale in session
          session[:locale] = params[:locale]
        else
          flash.now[:notice] = 
          "#{params[:locale]} translation not available"
          logger.error flash.now[:notice]
        end
      #NEW - uses the locale from session if possible
      elsif session[:locale]
        I18n.locale = session[:locale]
      else
        I18n.locale = I18n.default_locale
      end
    end
    

    # def set_i18n_locale_from_params
    #   if params[:locale]
    #     if I18n.available_locales.map(&:to_s).include?(params[:locale])
    #       I18n.locale = params[:locale]
    #     else
    #       flash.now[:notice] = 
    #         "#{params[:locale]} translation not available"
    #       logger.error flash.now[:notice]
    #     end
    #   end
    # end
end
