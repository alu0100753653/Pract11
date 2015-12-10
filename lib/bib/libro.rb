require './lib/bib.rb'
include Bib

class Libro < Biblio
    
        attr_accessor :editorial, :edicion, :volumen
        
        def initialize(autores, titulo, editorial, edicion,volumen, fecha)
            super(autor, titulo,fecha)
            @editorial=editorial
            @edicion=edicion
            @volumen=volumen
        end
        
        def to_s
            "#{@autores}(#{@fecha}),#{@titulo},(#{@edicion}),(#{@volumen}),#{@editorial}"
        end
end