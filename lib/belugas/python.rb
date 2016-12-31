require "thor"
require "json"

module Belugas
  module Python
    class Sonar < Thor
      package_name "belugas-ruby"

      desc "analyze --gemfile-path=/app/code", "Python feature detection JSON"
      method_option "pip-path", type: :string, default: "/code/pip.txt", required: false, aliases: "-p"
      def analyze
      end
    end
  end
end

require "belugas/python/version"
