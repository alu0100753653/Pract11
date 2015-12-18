require './lib/bib.rb'
include Bib

class Electronico < Biblio
    
        attr_reader :titulo,:tipo, :size
        attr_accessor :titulo,:tipo, :size
        
        def initialize(titulo,tipo, size)
            @titulo=titulo
            @tipo = tipo
            @size = size
        end
        
end