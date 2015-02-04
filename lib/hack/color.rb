module Hack
  class Color < Struct.new(:char)
    def self.dispatch_by_color_name(color, color_name)
      if color_name && color.respond_to?(color_name)
        color.public_send(color_name)
      else
        color.normal
      end
    end

    def black
      "\e[0;90m#{char}\e[0m"
    end

    def white
      "\e[0;37m#{char}\e[0m"
    end

    def orange
      "\e[0;31m#{char}\e[0m"
    end

    def yellow
      "\e[0;33m#{char}\e[0m"
    end

    def gray
      "\e[0;36m#{char}\e[0m"
    end

    def normal
      char
    end
  end
end
