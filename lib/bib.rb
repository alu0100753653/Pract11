require "bib/version"

module Bib
  # Your code goes here...
    class Biblio
        attr_accessor :autores, :titulo, :serie, :editorial, :edicion, :fecha
        
        def initialize(autores, titulo, serie, editorial, edicion, fecha)
        @autores = autores
        @titulo = titulo
        @serie = serie;
        @editorial = editorial
        @edicion = edicion
        @fecha = fecha
        end
                
        def to_s
        "(#{autores},#{titulo},#{serie},#{editorial},#{edicion},#{fecha})"
        end
    end
end
