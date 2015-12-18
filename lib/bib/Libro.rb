require './lib/bib.rb'
include Bib

class Libro < Biblio
    
        def initialize(autores,apellidos,titulo, fecha, serie,edicion, numeroedicion, isbn)
            super(autores,apellidos,titulo, fecha, serie,edicion, numeroedicion, isbn)
        end
       
        def <=> other
	     @titulo <=> other.titulo
        end
	   
	   def ==(other)
	      @titulo == other.titulo
	   end
       
       
end