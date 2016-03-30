#require_relative 'config/environment.rb'
task :environment do
  require_relative 'config/environment'
  #require 'logger'
  #ActiveRecord::Base.logger = Logger.new(STDOUT)
end
namespace :db do
  task :seed => :environment do
    load 'db/seeds.rb'
  end

  desc "Migrate the db"
  task :migrate => :environment do
    connection_details = YAML::load(File.open('config/database.yml'))
    ActiveRecord::Base.establish_connection(connection_details)
    ActiveRecord::Migrator.migrate("db/migrate/")
  end

  desc "drop and recreate the db"
  task :reset => [:drop, :migrate]

  desc "drop the db"
  task :drop => :environment do
    connection_details = YAML::load(File.open('config/database.yml'))
    File.delete(connection_details.fetch('database')) if File.exist?(connection_details.fetch('database'))
  end
end
task :console do
  Rake::Task["db:seed"].invoke
  Pry.start
end

