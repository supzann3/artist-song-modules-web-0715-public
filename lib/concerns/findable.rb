module Findable
  module ClassMethods
    def find_by_name(name)
      all.detect{|a| a.name} #need to find a common array
    end
  end
end
