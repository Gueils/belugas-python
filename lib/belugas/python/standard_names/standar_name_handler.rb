module Belugas
  module Python
    module StandardNames
      class StandardNamesHandler
        def initialize(name)
          @name = name.downcase
        end

        def standard_name
          feature_name['standard_name']
        end

        def default_version
          feature_name['default_version']
        end

        def feature_version
          feature_name['feature_version']
        end

        def short_version
          feature_name['short_version']
        end

        def exist?
          StandardNames::NAMES.key? @name
        end

        def default_version?
          feature_name.key? 'default_version'
        end

        def feature_version?
          feature_name.key? 'feature_version'
        end

        def short_version?
          feature_name.key? 'short_version'
        end

        private

        def feature_name
          @feature_name ||= StandardNames::NAMES[@name]
        end
      end
    end
  end
end
