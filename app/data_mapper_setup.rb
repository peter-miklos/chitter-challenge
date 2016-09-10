require 'data_mapper'
require 'dm-postgres-adapter'
require 'dm-validations'

# require_relative 'models/message'
require_relative 'models/user'


DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/chitter_challenge_#{ENV['RACK_ENV']}")

DataMapper.finalize
DataMapper.auto_upgrade!
