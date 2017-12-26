module Belugas
  module Python
    module StandardNames
      NAMES = {
        'django' => {
          'standard_name' => 'django',
          'categories' => ['Framework'],
          'default_version' => '1.9',
          'short_version' => /\d\.\d/
        },
        'flask' => {
          'standard_name' => 'flask',
          'categories' => ['Framework']
        },
        'django-postgrespool' => {
          'standard_name' => 'postgresql',
          'categories' => ['Database'],
          'feature_version' => '9.0'
        },
        'psycopg2' => {
          'standard_name' => 'postgresql',
          'categories' => ['Database'],
          'feature_version' => '9.0'          
        },
        'mysql-python' => {
          'standard_name' => 'mysql',
          'categories' => ['Database'],
          'feature_version' => '5.5'
        },
        'mysqlclient' => {
          'standard_name' => 'mysql',
          'categories' => ['Database'],
          'feature_version' => '5'
        },
        'celery' => {
          'standard_name' => 'celery',
          'categories' => ['Service'],
          'default_version' => '4.1'
        }
      }.freeze
    end
  end
end
