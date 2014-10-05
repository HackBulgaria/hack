module Hack
  class Generator < Thor::Group
    include Thor::Actions

    def self.inherited(child)
      child.source_root Hack.root
    end
  end
end
