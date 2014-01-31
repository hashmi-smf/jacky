module Jacky
  class Railtie < Rails::Railtie
    initializer "jacky.init" do
      #preload these
      Jacky::Git.version
      Jacky.settings

      #set the default url options
      options = Jacky.config.default_url_options
      if options
        config.action_mailer.default_url_options = options
        Rails.application.routes.default_url_options = options
      end

    end
  end
end
