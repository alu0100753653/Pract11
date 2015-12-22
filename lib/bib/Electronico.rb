require './lib/bib.rb'
include Bib

class Electronico < Biblio
    
        attr_reader :titulo,:autor,:apellidos,:lugar, :disponibilidad
        attr_accessor :titulo,:autor,:apellidos,:lugar, :disponibilidad
        
        def initialize(titulo,autor,apellidos,lugar, disponibilidad)
            @titulo=titulo
            @autor=autor
            @apellidos=apellidos
            @lugar = lugar
            @disponibilidad=disponibilidad
        end
        
        def to_s
                    cadena=""
                    cadena<<"#{titulo}\n  "
            	    cadena<<"#{autor}\n  "
            	    cadena<< "#{lugar}\n  "
            	    cadena<< "#{disponibilidad}\n  "
            	    cadena<<"\n"
        end
        
end