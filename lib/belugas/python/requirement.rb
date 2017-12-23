module Belugas
  module Python
    class Requirement
      attr_reader :name, :version, :standard_name

      def initialize(name, version)
        @name = name
        @version = version
      end

      def update(new_name)
        @standard_name = new_name
        self
      end

      def update_version(new_version)
        @version = new_version
        self
      end

      def categories
        StandardNames::NAMES[@name] && StandardNames::NAMES[@name]['categories']
      end
    end
  end
end
