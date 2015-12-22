require './lib/bib.rb'
include Bib

class Periodico < Biblio
        
     attr_reader :titulo,:autor,:apellidos,:periodico,:seccion, :num_pag
        attr_accessor :titulo,:apellidos, :autor,:periodico,:seccion, :num_pag
        
        def initialize(titulo, autor,apellidos,periodico,seccion, num_pag)
           @autor=autor
           @apellidos=apellidos
           @titulo = titulo
           @periodico=periodico
           @seccion = seccion
           @num_pag = num_pag
        end
        
        def to_s
                    cadena=""
                    cadena<<"#{titulo}\n  "
            	    cadena<<"#{autor}\n  "
            	    cadena<< "#{periodico}\n  "
            	    cadena<< "#{seccion}\n  "
            	    cadena<< "#{num_pag}\n  "
            	    cadena<<"\n"
        end
     
end