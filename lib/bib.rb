require "bib/version"

module Bib
  # Your code goes here...
    class Biblio
        attr_accessor :autores, :titulo, :serie, :editorial, :edicion, :fecha, :isbn
        
        def initialize(autores, titulo, serie, editorial, edicion, fecha, isbn)
        @autores = autores
        @titulo = titulo
        @serie = serie;
        @editorial = editorial
        @edicion = edicion
        @fecha = fecha
        @isbn = isbn
        end
                
        def to_s
        "(#{autores},#{titulo},#{serie},#{editorial},#{edicion},#{fecha},#{isbn})"
        end
    end
end
