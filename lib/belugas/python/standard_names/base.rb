module Belugas
  module Python
    module StandardNames
      NAMES = {
        'django' => {
          'standard_name' => 'django',
          'categories' => ['Framework'],
          'version' => '1.9'
        },
        'flask' => {
          'standard_name' => 'flask',
          'categories' => ['Framework']
        },
        'django-postgrespool' => {
          'standard_name' => 'postgresql',
          'categories' => ['Database']
        },
        'psycopg2' => {
          'standard_name' => 'postgresql',
          'categories' => ['Database'],
          'version' => '9'
        },
        'mysql-python' => {
          'standard_name' => 'mysql',
          'categories' => ['Database'],
          'version' => '5'
        },
        'mysqlclient' => {
          'standard_name' => 'mysql',
          'categories' => ['Database'],
          'version' => '5'
        },
        'celery' => {
          'standard_name' => 'celery',
          'categories' => ['Service'],
          'version' => '4.1'
        }
      }.freeze
    end
  end
end
