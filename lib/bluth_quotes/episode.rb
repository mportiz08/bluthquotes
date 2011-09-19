require 'bluth_quotes/quote'

module BluthQuotes  
  class Episode
    attr_reader :quotes
    
    def initialize(title=nil, &block)
      @quotes = []
      @title = title unless title.nil?
      instance_eval &block if block_given?
    end
    
    def title(title=nil)
      if title.nil?
        @title
      else
        @title = title
      end
    end
    
    def quote(&block)
      q = Quote.new
      q.instance_eval &block
      @quotes << q
    end
  end
end
