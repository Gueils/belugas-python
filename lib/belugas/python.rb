require 'thor'
require 'json'
require 'belugas/python/dispatcher'
require 'rescuer'

module Belugas
  module Python
    class Sonar < Thor
      package_name 'belugas-ruby'

      desc 'analyze --requirements-path=/app/code',
           'Python feature detection JSON'
      method_option 'requirements-path',
                    type: :string, default: '/code/',
                    required: false, aliases: '-p'
      def analyze
        rescuer = Rescuer.new

        begin
          dispatcher = Belugas::Python::Dispatcher
                       .new(options['requirements-path'])
          dispatcher.render
        rescue Exception => e
          rescuer.ping e
          raise e
        end
      end
    end
  end
end

require 'belugas/python/version'
