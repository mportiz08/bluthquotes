require 'bluth_quotes/episode'

module BluthQuotes
  module Episodes
    module Season1
      Episode101 = Episode.new 'Pilot' do
        quote do
          michael        "What have we always said is the most important thing?"
          george_michael "Breakfast!"
          michael        "...no. Family."
          george_michael "Oh right! I thought you meant in the things you eat."
        end
      end
    end
  end
end
