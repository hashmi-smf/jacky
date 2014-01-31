module Jacky
  class Railtie < Rails::Railtie
    initializer "jacky.init" do
      Jacky::Git.version
      Jacky.config_init
    end
  end
end


