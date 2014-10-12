require "pathname"
require "thor"

module Hack
  def self.root
    @root ||= Pathname.new File.expand_path("../..", __FILE__)
  end
end

require_relative "hack/version"
require_relative "hack/core_ext"
require_relative "hack/generator"
require_relative "hack/application"
