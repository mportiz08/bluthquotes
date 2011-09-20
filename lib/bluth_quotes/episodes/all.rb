Dir["#{File.join(File.dirname(__FILE__), 'season_1')}/*.rb"].each {|ep| require File.join("bluth_quotes/episodes/season_1/", File.basename(ep, '.rb'))}
