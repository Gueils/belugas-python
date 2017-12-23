require 'belugas/python/parser/requirements'
require 'belugas/python/feature/builder'
require 'belugas/python/standard_names/standar_name_handler'
require 'belugas/python/standard_names/requirement_handler'
require 'belugas/python/standard_names/base'
require 'belugas/python/libraries_collection'

module Belugas
  module Python
    class Dispatcher
      
      def initialize(path)
        @requirements = Belugas::Python::Parser::Requirements.new(path)
      end

      def render
        features.each do |feature|
          STDOUT.print feature.to_json
          STDOUT.print "\0"
        end
      end

      private

      def dependencies
        @dependencies ||= Belugas::Python::LibrariesCollection
                          .new(@requirements.requirements)
                          .dependencies
      end

      def features
        @features ||= dependencies.values.map do |dependency|
          Belugas::Python::Feature::Builder.new(dependency).attributes
        end << python_feature
      end

      def python_feature
        @python_feature ||= {
          'type' => 'feature',
          'name' => 'Python',
          'version' => '2.7',
          'description' => 'The application uses Python code',
          'categories' => ['Language']
        }
      end
    end
  end
end
