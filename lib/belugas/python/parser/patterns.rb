module Belugas
  module Python
    module Parser
      module Patterns
        REQUIREMENT_CALL =/(?<name>(.*))==(?<version>(\d.\d))|(?<name>(.*))>=(?<version>(\d.\d))|(?<name>(.*))>(?<version>(\d.\d))|(?<name>(.*))~=(?<version>(\d.\d))/
      end
    end
  end
end
