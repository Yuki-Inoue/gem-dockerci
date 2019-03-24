require "dockerci/version"

module Dockerci
  class Error < StandardError; end
  # Your code goes here...
end

require_relative 'dockerci/railtie' if defined?(Rails)
