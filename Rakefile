# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.
require 'csv'
require_relative "config/application"

Rails.application.load_tasks

namespace :pokemon do
  desc "Exports Pokemon table to file /public/pokemon_table.csv"
  task export: [:environment] do
    file = "#{Rails.root}/public/pokemon_table.csv"
    table = Pokemon.all
    CSV.open(file, 'w') do |writer|
      # write attributes as column headers
      writer << table.first.attributes.map{ |a,v| a }
      table.each do |p|
        # write each attribute value to file
        writer << p.attributes.map{ |a,v| v }
      end
    end
  end
  desc "Scrape sprites from pokemondb"
  task scrape: [:environment]
end
