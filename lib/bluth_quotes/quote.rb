module BluthQuotes
  class Quote
    attr_reader :characters
    
    def initialize(&block)
      @lines, @characters = [], []
      instance_eval &block if block_given?
    end
    
    def add_line(character, txt)
      @characters = (@characters << character.gsub('_', ' ').downcase).uniq
      @lines << "#{humanize_name(character)}: #{txt}"
    end
    
    def method_missing(meth, *args, &block)
      character = meth.to_s.downcase
      if args.size == 1
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
    
    private
    
    def humanize_name(character)
      character.split('_').map(&:capitalize).join(' ')
    end
  end
end
