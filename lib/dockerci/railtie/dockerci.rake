
namespace :dockerci do
  desc 'start mysql docker'
  task :mysql do
    db_config = Rails.configuration.database_configuration
    db_name   = db_config.dig('development', 'database')
    cmd = %w[docker run -d -p 3306:3306]
    cmd += ['--name', db_name]
    cmd += ['-e', "MYSQL_DATABASE=#{db_name}"]
    img_name = 'circleci/mysql'
    tag = Rails.application.config.dockerci_mysql_version
    img_name += ':' + tag if tag
    cmd << img_name
    exec(*cmd)
  end
end
