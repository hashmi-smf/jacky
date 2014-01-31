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
      @config = open_store("config/config.yml")
      @keys   = open_store("config/keys.yml")
    end

    private
    def open_store(path)
      path = Rails.root.join(path)
      StoreWrapper.new(YAML::Store.new(path))
    end

  end

  def self.settings
    @settings = Settings.instance
  end

  def self.config
    settings.config
  end

  def self.keys
    settings.keys
  end

end
