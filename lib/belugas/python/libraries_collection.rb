module Belugas
  module Python
    class LibrariesCollection
            
      def initialize(requirements)
        @requirements = requirements
        @features = {}
      end

      def dependencies
        requirements
        @features
      end

      private

      def requirements
        @requirements.map do |requirement|
          standard_name = StandardNames::StandardNamesHandler
                          .new(requirement.name)
          next unless standard_name.exist?
          @features[standard_name.standard_name] = StandardNames::RequirementHandler
                                                  .new(requirement, standard_name)
                                                  .requirement
        end.compact
      end
    end
  end
end
