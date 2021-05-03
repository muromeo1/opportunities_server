require 'bundler/setup'
require 'hanami/setup'
require 'hanami/model'
require_relative '../lib/opportunities_server'
require_relative '../apps/v1/application'

Hanami.configure do
  mount V1::Application, at: '/api/v1'

  model do
    ##
    # Database adapter
    #
    # Available options:
    #
    #  * SQL adapter
    #    adapter :sql, 'sqlite://db/opportunities_server_development.sqlite3'
    #    adapter :sql, 'postgresql://localhost/opportunities_server_development'
    #    adapter :sql, 'mysql://localhost/opportunities_server_development'
    #
    adapter :sql, ENV.fetch('DATABASE_URL')

    ##
    # Migrations
    #
    migrations 'db/migrations'
    schema     'db/schema.sql'
  end

  mailer do
    root 'lib/opportunities_server/mailers'

    # See https://guides.hanamirb.org/mailers/delivery
    delivery :test
  end

  environment :development do
    # See: https://guides.hanamirb.org/projects/logging
    logger level: :debug
  end

  environment :production do
    logger level: :info, formatter: :json, filter: []

    mailer do
      delivery :smtp, address: ENV.fetch('SMTP_HOST'), port: ENV.fetch('SMTP_PORT')
    end
  end
end
