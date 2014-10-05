module Hack
  class Application < Thor
    def self.define_command(name, desc)
      require_relative "commands/#{name}_command"

      register Hack.const_get("#{name.capitalize}Command"), name, name, desc
    end

    define_command :slide,   "Creates a slide boilerplate code"
    define_command :problem, "Creates a problem boilerplate code"
  end
end
