require "thor"
require "json"
require 'belugas/python/dispatcher'

module Belugas
  module Python
    class Sonar < Thor
      package_name "belugas-ruby"

      desc "analyze --requirements-path=/app/code", "Python feature detection JSON"
      method_option "requirements-path", type: :string, default: "/code/requirements.txt", required: false, aliases: "-p"
      def analyze
        dispatcher = Belugas::Python::Dispatcher.new(options["requirements-path"])
        dispatcher.render
      end
    end
  end
end

require "belugas/python/version"
