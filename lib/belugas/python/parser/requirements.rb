require 'belugas/python/parser/patterns'
require 'belugas/python/requirement'
require 'find'
require 'pathname'

module Belugas
  module Python
    module Parser
      class Requirements

        def initialize(path)
          @path = path
        end

        def requirements
          @requirements ||= [].tap do |deps|
            requirements_matches.each do |match|
              deps << Belugas::Python::Requirement.new(match[:name].downcase, match[:version] || 0) unless match[:name].empty?
            end
          end
        end

        private

        def requirements_matches
          @requirements_matches ||= matches(Patterns::REQUIREMENT_CALL)
        end

        def matches(pattern)
          [].tap{|m| content.scan(pattern){ m << Regexp.last_match } }
        end

        def content
          @content ||= File.read(find_requirement_file)
        end

        def find_requirement_file
          path_name = Pathname.new(@path)
          if path_name.exist?
            if path_name.file?
              return @path if @path =~ /requirements\.txt$/
            end
            if path_name.directory?
              Find.find(@path) do |path|
                return path if path =~ /requirements\.txt$/
              end
            end
          end
        end
      end
    end
  end
end
