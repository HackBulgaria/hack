require_relative 'colormap'

module Hack
  class Usage
    USAGE_DIR = Pathname.new(__dir__).join('usage')

    def show
      puts colormap.colorize(logo)
      puts
    end

    private

    def colormap
      @colormap ||= Colormap.new(colors)
    end

    def colors
      {
        'g' => 'gray',
        'b' => 'black',
        'r' => 'white',
        'y' => 'yellow',
      }
    end

    def logo
      @logo ||= USAGE_DIR.join('logo.ascii').read
    end
  end
end
