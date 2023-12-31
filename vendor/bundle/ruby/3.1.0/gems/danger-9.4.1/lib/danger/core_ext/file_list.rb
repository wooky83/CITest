require "danger/helpers/array_subclass"

module Danger
  class FileList
    include Helpers::ArraySubclass

    # Information about pattern: http://ruby-doc.org/core-2.2.0/File.html#method-c-fnmatch
    # e.g. "**/something.*" for any file called something with any extension
    def include?(pattern)
      self.each do |current|
        if !current.nil? && (File.fnmatch(pattern, current, File::FNM_EXTGLOB) || pattern == current)
          return true
        end
      end
      return false
    end
  end
end
