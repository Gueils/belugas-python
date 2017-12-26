module Belugas
  module Python
    module StandardNames
      class RequirementHandler

        def initialize(requirement, standard_name)
          @requirement = requirement
          @standard_name = standard_name
        end

        def requirement
          handle
          @requirement
        end

        def handle
          @requirement.update @standard_name.standard_name
          default_version
          feature_version
          short_version
        end

        def default_version
          @requirement.update_version @standard_name.default_version \
          if @requirement.version == 0 && @standard_name.default_version?
        end

        def feature_version
          @requirement.update_version @standard_name.feature_version \
          if @standard_name.feature_version?
        end

        def short_version
          @requirement.update_version @requirement.version.slice(@standard_name.short_version) \
          if @standard_name.short_version?
        end
      end
    end
  end
end
