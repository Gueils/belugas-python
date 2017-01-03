require 'belugas/python/parser/patterns'
require 'belugas/python/requirement'

module Belugas
  module Python
    module Parser
      class Requirements

        def initialize(path)
          @content = File.read(path)
        end

        def requirements
          @requirements ||= [].tap do |deps|
            requirements_matches.each do |match|
              deps << Belugas::Python::Requirement.new(match[:name], match[:version])
            end
          end
        end

        private

        def requirements_matches
          @requirements_matches ||= matches(Patterns::REQUIREMENT_CALL)
        end

        def matches(pattern)
          [].tap{|m| @content.scan(pattern){ m << Regexp.last_match } }
        end
      end
    end
  end
end
