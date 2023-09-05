require 'rake'
require 'hanami/rake_tasks'

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
  task default: :spec
rescue LoadError
end

Rake::Task['db:migrate'].clear

require 'rom/sql/rake_task'

namespace :db do
  task setup: :environment do
    ROM::SQL::RakeSupport.env = Bookshelf::Persistence.configuration
  end

  task create: :environment do
    `createdb -h db -U postgres hanami_bookshelf_rom_development`
  end

  task drop: :environment do
    `dropdb -h db -U postgres hanami_bookshelf_rom_development`
  end
end
