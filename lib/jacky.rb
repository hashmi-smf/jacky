require "jacky/version"
if defined?(Rails)
  require "jacky/railtie"
  require "jacky/settings"
  require "jacky/git"
end

module Jacky
end
