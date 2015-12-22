require './lib/bib.rb'
include Bib

class Revista < Biblio
    
     attr_reader :titulo,:autor,:apellidos,:revista, :cant_pag, :num_publicacion
     attr_accessor :titulo,:autor,:apellidos,:revista, :cant_pag, :num_publicacion
        
        def initialize(titulo,autor,apellidos,revista,cant_pag, num_publicacion)
           @titulo=titulo
           @autor=autor
           @apellidos=apellidos
           @revista=revista
           @cant_pag = cant_pag
           @num_publicacion = num_publicacion
        end
        
        def to_s
            cadena=""
            cadena<<"#{titulo}\n  "
            	    cadena<<"#{autor}\n  "
            	    cadena<< "#{revista}\n  "
            	    cadena<< "#{cant_pag}\n  "
            	    cadena<< "#{num_publicacion}\n  "
            	    cadena<<"\n"
        end
    
end