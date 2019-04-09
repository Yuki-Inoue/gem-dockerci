# Dockerci

Read configuration of `config/database.yml`, use that information to launch a circleci mysql docker image.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dockerci'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dockerci

## Usage

Simply run:

```terminal
bundle exec rake dockerci:mysql
```

It will load your env's database.yml, and using that information, launches the circleci/mysql image.

If you want to specify the launching version, then in your `config/application.rb`, put following code:

```ruby
config.dockerci_mysql_version = '5.7'
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Yuki-Inoue/dockerci.
