require 'bundler/setup'
require 'hanami/setup'
require_relative '../lib/bookshelf'
require_relative '../apps/web/application'

class HttpRouter
  class Request
    def initialize(path, rack_request)
      @rack_request = rack_request
      @path = URI::DEFAULT_PARSER.unescape(path).split(/\//)
      @path.shift if @path.first == ''
      @path.push('') if path[-1] == ?/
      @extra_env = {}
      @params = []
      @acceptable_methods = Set.new
    end
  end
end


Hanami.configure do
  mount Web::Application, at: '/'

  mailer do
    root 'lib/bookshelf/mailers'

    # See http://hanamirb.org/guides/mailers/delivery
    delivery :test
  end

  environment :development do
    # See: http://hanamirb.org/guides/projects/logging
    logger level: :debug
  end

  environment :production do
    logger level: :info, formatter: :json, filter: []

    mailer do
      delivery :smtp, address: ENV.fetch('SMTP_HOST'), port: ENV.fetch('SMTP_PORT')
    end
  end
end
