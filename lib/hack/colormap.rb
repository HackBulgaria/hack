require_relative 'color'

module Hack
  class Colormap < Struct.new(:mapping)
    BLANK_CHARACTERS = /\A\s+\z/.freeze
    BLOCK_CHARACTER = '█'.freeze

    def colorize(input)
      colorized_characters = input.each_char.map do |char|
        color = create_empty_or_block_color(char)
        Color.dispatch_by_color_name(color, color_name_for(char))
      end
      colorized_characters.join
    end

    private

    def color_name_for(char)
      mapping[char]
    end

    def blank_character?(char)
      char =~ BLANK_CHARACTERS
    end

    def create_empty_or_block_color(char)
      if blank_character?(char)
        Color.new(char)
      else
        Color.new(BLOCK_CHARACTER)
      end
    end
  end
end
