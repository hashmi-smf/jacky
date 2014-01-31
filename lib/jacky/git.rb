module Jacky
  class Git
    def self.version
      @version ||= `git --git-dir="#{Rails.root.join(".git")}" --work-tree="#{Rails.root}" log -1 --date=short --format="%ad-%h"`.gsub('-', '.')
    end
  end
end

