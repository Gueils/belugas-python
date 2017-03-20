module Belugas
  module Python
    module Feature
      class Builder

        def initialize(requirement)
          @requirement = requirement
        end

        def attributes
          {
            "type" => "feature",
            "name" => @requirement.standard_name,
            "version" => @requirement.version,
            "description" => "The application uses #{@requirement.standard_name}",
            "categories" => @requirement.categories,
            "cue_locations" => [""]
          }
        end
      end
    end
  end
end
