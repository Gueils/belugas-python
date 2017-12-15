require 'pry'
module Belugas
  module Python
    class LibrariesCollection

      def initialize(requirements)
        @requirements = requirements
      end

      def dependencies
        requirements
      end

      private

      def requirements
        @requirements.map do |requirement|
          requirement_name = StandardNames::NAMES[requirement.name] #=> {standard_name: '', categories: []}
          if requirement_name && requirement_name['standard_name']
            requirement.update requirement_name['standard_name']
            if requirement_name['version']
              requirement.update_version requirement_name['version']
            end
          end
        end.compact
      end
    end
  end
end
