# BluthQuotes
the best quotes from Arrested Development's Bluth family

# Examples

    >> require 'bluth_quotes'
    >> quote = BluthQuotes.random_from "George Michael"
    >> puts q
    Michael: What have we always said is the most important thing?
    George Michael: Breakfast!
    Michael: ...no. Family.
    George Michael: Oh right! I thought you meant in the things you eat.

## <del>No Touching!</del> Contributing

Help me out by forking this project, adding quotes from episodes, and sending pull requests--_COME ON!_

Here's a snippet from the file for the pilot episode to show how quotes are structured--hopefully it's pretty straightforward.

    Episode101 = Episode.new 'Pilot' do
      quote do
        michael        "What have we always said is the most important thing?"
        george_michael "Breakfast!"
        michael        "...no. Family."
        george_michael "Oh right! I thought you meant in the things you eat."
      end
      # etc
    end
