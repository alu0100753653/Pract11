require './lib/bib/biblio'

Node=Struct.new(:value,:next)

class Node
    include Comparable
    
    def <=> other
        return unless other.respond_to? :full_name
        value <=> other.value
    end
end
