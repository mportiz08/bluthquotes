require 'bluth_quotes/episodes/all'

module BluthQuotes  
  def self.all
    quotes = []
    Episodes.constants.each do |season|
      Episodes.const_get(season).constants.each do |episode|
        Episodes.const_get(season).const_get(episode).quotes.each {|quote| quotes << quote}
      end
    end
    quotes
  end
end
