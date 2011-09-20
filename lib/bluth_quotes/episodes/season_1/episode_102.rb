# coding: utf-8
require 'bluth_quotes/episode'

module BluthQuotes
  module Episodes
    module Season1
      Episode102 = Episode.new 'Top Banana' do
        quote do
          george_sr "This is my vacation, Michael."
          michael   "You're doing time, Dad."
          george_sr "I'm doing the time... of my life!"
        end
        quote do
          lucille "(To Lindsay) You want your belt to buckle, not your chair."
        end
        quote do
          gob     "I should be in charge. I’m the older brother."
          michael "Do you even want to be in charge?"
          gob     "No... but I'd like to be asked!"
        end
        quote do
          george_sr    "There's always money in the Banana Stand."
          george_sr    "There was $250,000 lining the walls of that stand, how much clearer can I say it: \"THERE IS ALWAYS MONEY IN THE BANANA STAND!\""
          prison_guard "NO TOUCHING!"
          george_sr    "NO TOUCHING!"
        end
      end
    end
  end
end
