module Belugas
  module Python
    module StandardNames
      class StandardNamesHandler
        def initialize(name)
          @name = name
        end

        def standard_name
          @feature_name['standard_name']
        end

        def version
          @feature_name['version']
        end

        def exist?
          StandardNames::NAMES.has_key? @name
        end

        def has_version?
          @feature_name.has_key? 'version'
        end

        private
          def feature_name
            @feature_name ||= StandardNames::NAMES[@name]
          end
      end
    end
  end
end
