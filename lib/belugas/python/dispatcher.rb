require 'belugas/python/parser/requirements'
require 'belugas/python/feature/builder'
require 'belugas/python/standard_names/base'

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
        @requirements.requirements.map do |requirement|
          requirement_name = StandardNames::NAMES[requirement.name]

          if requirement_name && !existing_requirements.include?(requirement_name)
            existing_requirements << requirement_name
            requirement.update requirement_name
          end

        end.compact
      end

      def existing_requirements
        @existing_requirements ||= []
      end

      def features
        @features ||= dependencies.map do |dependency|
          Belugas::Python::Feature::Builder.new(dependency).attributes
        end
      end


      def python_feature
       @python_feature ||= [{
          "type" => "feature",
          "name" => "Python",
          "version" => "2.7",
          "description" => "The application uses Python code",
          "categories" => ["Language"]
        }]
      end

    end
  end
end
