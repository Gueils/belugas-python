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

      def to_json(*a)
        {
          name: name,
          version: version
        }.to_json(*a)
      end
    end
  end
end
