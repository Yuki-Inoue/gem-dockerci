module Dockerci
  class Railtie < ::Rails::Railtie
    config.dockerci_mysql_version = nil

    rake_tasks do
      load 'dockerci/railtie/dockerci.rake'
    end
  end
end
