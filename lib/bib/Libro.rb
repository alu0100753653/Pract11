require './lib/bib.rb'
include Bib

class Libro < Biblio
    
        def initialize(autores,apellidos,titulo,fecha,serie,edicion,isbn)
            super(autores,apellidos,titulo,fecha,serie,edicion,isbn)
        end
       
        def <=> other
	     @titulo <=> other.titulo
        end
	   
	   def ==(other)
	      @titulo == other.titulo
	   end
       
       def to_s
           cadena=""
                    cadena << "#{autores}\n   "
                    cadena << "#{apellidos}\n   "
            		cadena << "#{titulo}\n   "
            		cadena << "(#{serie})\n   "
            		cadena << "#{edicion}; edition (#{fecha})\n   "
                    cadena << "#{isbn}\n"
                    cadena<<"\n"
       end
       
end