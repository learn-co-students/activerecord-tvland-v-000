require_relative 'config/environment.rb'
require "sinatra/activerecord/rake"

namespace :db do

  desc "Migrate the db"
  task :migrate do
    connection_details = YAML::load(File.open('config/database.yml'))
    ActiveRecord::Base.establish_connection(connection_details)
    ActiveRecord::Migrator.migrate("db/migrate/")
  end

  desc "drop and recreate the db"
  task :reset => [:drop, :migrate]

  desc "drop the db"
  task :drop do
    connection_details = YAML::load(File.open('config/database.yml'))
    File.delete(connection_details.fetch('database')) if File.exist?(connection_details.fetch('database'))
  end

  desc "start console"
  task :console do
    Pry.start
  end

  desc "delete database and schema files"
  task :delete_all do
    File.delete('./db/ar.db') if File.exist?('./db/ar.db')
    File.delete('./db/schema.rb') if File.exist?('./db/schema.rb')
  end

  desc "delete database and schema files and migrates"
  task :reset_all do
    File.delete('./db/ar.db') if File.exist?('./db/ar.db')
    File.delete('./db/schema.rb') if File.exist?('./db/schema.rb')

    connection_details = YAML::load(File.open('config/database.yml'))
    ActiveRecord::Base.establish_connection(connection_details)
    ActiveRecord::Migrator.migrate("db/migrate/")
  end
end
