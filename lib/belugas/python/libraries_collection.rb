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
          standard_name = StandardNames::StandardNamesHandler.new(requirement.name)
          if standard_name.exist?
            requirement.update standard_name.standard_name
            requirement.update_version standard_name.version if standard_name.has_version?
          end
        end.compact
      end
    end
  end
end
