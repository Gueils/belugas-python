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
            requirement = ser_attrs(requirement, standard_name)
          end
        end.compact
      end

      def ser_attrs(requirement, standard_name)
        requirement.update standard_name.standard_name
        requirement.update_version standard_name.version \
        if requirement.version == 0 && standard_name.version?
        requirement.update_version requirement.version.slice(standard_name.short_version) \
        if standard_name.short_version?
      end  
    end
  end
end
