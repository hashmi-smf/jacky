require 'yaml/store'
require 'singleton'

#Usage
#puts Jacky.config.store.transaction{|x| x[:name] = 'Khaja'}
#puts Jacky.config.name
#puts Jacky.keys.age
module Jacky

  class Settings
    include Singleton
    attr_reader :config, :keys

    class StoreWrapper
      attr_reader :store

      def initialize(store)
        @store = store
      end

      def method_missing(m, *args, &block)
        self[m]
      end

      def [](key)
        @store.transaction{@store[key]}
      end
    end

    def initialize
      @config = StoreWrapper.new(YAML::Store.new(File.join(Dir.pwd, "config/config.yml")))
      @keys   = StoreWrapper.new(YAML::Store.new(File.join(Dir.pwd, "config/keys.yml")))
    end

  end

  @settings = Settings.instance

  def self.config
    @settings.config
  end

  def self.keys
    @settings.keys
  end

end
