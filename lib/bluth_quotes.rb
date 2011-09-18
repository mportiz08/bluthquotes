class BluthQuotes
  CHARACTERS = ["lucille", "michael"]
  
  class Quote
    attr_reader :characters
    
    def initialize(&block)
      @lines, @characters = [], []
      instance_eval &block
    end
    
    def add_line(character, txt)
      @characters = (@characters << character.downcase).uniq
      @lines << "#{character.capitalize}: #{txt}"
    end
    
    def method_missing(meth, *args, &block)
      character = meth.to_s.downcase
      if CHARACTERS.include?(character) && args.size == 1
        send(:add_line, character, args.first)
      else
        super
      end
    end
    
    def to_s
      str = ""
      @lines.each {|l| str = str << l << "\n"}
      str.strip
    end
  end
  
  def initialize
    @quotes = build_quotes
  end
  
  def all
    @quotes
  end
  
  private
  
  def build_quotes
    [
      Quote.new do
        lucille "I'll be in the hospital bar."
        michael "Uhh, you know, there isn't a hospital bar, mother."
        lucille "Well, this is why people hate hospitals."
      end
    ]
  end
end
