module Belugas
  module Python
    module StandardNames
      NAMES = {
        "django" => {
          "standard_name" => "django",
          "categories" => ["Framework"]
        },
        "flask" => {
          "standard_name" => "flask",
          "categories" => ["Framework"]
        },
        "django-postgrespool" => {
          "standard_name" => "postgresql",
          "categories" => ["Database"]
        },
        "psycopg2" => {
          "standard_name" => "postgresql",
          "categories" => ["Database"],
          "version" => "9"
        },
        "mysql-python" => {
          "standard_name" => "mysql",
          "categories" => ["Database"],
          "version" => "5"
        },
         "mysqlclient" => {
           "standard_name" => "mysql",
           "categories" => ["Database"],
           "version" => "5"
         }
      }
    end
  end
end
