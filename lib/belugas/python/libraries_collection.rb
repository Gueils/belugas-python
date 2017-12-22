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
        features = Hash.new
        @requirements.map do |requirement|
          standard_name = StandardNames::StandardNamesHandler.new(requirement.name)
          if standard_name.exist?
            features[standard_name.standard_name] = StandardNames::RequirementHandler.new(requirement, standard_name).requirement
          end
        end.compact
        features
      end
    end
  end
end
