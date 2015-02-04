require_relative 'usage'

module Hack
  class Application < Thor
    class << self
      def start(*)
        usage = Usage.new
        usage.show

        super
      end

      private

      def define_command(name, desc)
        require_relative "commands/#{name}_command"

        register Hack.const_get("#{name.capitalize}Command"), name, name, desc
      end
    end

    define_command :slide,   "Creates a slide boilerplate code"
    define_command :problem, "Creates a problem boilerplate code"
  end
end
