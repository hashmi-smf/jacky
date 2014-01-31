module Jacky
  class Railtie < Rails::Railtie
    initializer "jacky.init" do
      #preload these
      Jacky::Git.version
      Jacky.settings
    end
  end
end
